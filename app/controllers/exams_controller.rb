# -*- coding: utf-8 -*-

class ExamsController < ApplicationController

before_filter :authenticate_user!

  def index
    @title = "Exams list"
    @exams = Exam.all
  end

  def show
    @exam = Exam.find(params[:id])
    @title = @exam.title
    @MAX_scores = @exam.questions.pluck(:difficult).inject{|sum,x| sum + x }
  end

  def prepare
    session[:answer] = []
    session[:random_ids] = []
    session[:started_at] = Time.now
    session[:finish_at] = nil
    @title = "Select a section"
    @exam = Exam.find(params[:id])
    # Количество задаваемых вопросов - 30 или кол-во вопросов в экзамене
    qty = 30
    qty = @exam.questions.count if @exam.questions.count <= qty
    # Массив случайных id вопросов
    if (!session[:random_ids].present?)
      session[:random_ids] = @exam.question_ids.sort_by { rand }.slice(0, qty)
      session[:qty] = qty
    end
    # Попытки
    if !session[:try].present?
      session[:try] = 1
    else
      session[:try] += 1
    end
  end

  def answer
    # TODO: check parameters
    # Текущий вопрос, если неверно указан, то -  или первый или последний
    current_que = params[:question].to_i
    current_que = 1 if current_que <= 0
    current_que = session[:qty] if current_que > session[:qty]
    question = Question.find(session[:random_ids][current_que-1])
    answer = params[:answer]
    case question.type.id
    when 1
      session[:answer][current_que] = answer.to_i
    when 2
      session[:answer][current_que] = answer.map(&:to_i)
    end
    render :nothing => true
    #respond_to do |format|
    #  format.html {}
    #end
  end

  def start
  
      
        
       # redirect_to candidates_path  if session[:try] > 1
  
    @exam = Exam.find(params[:id])
    # Если параметр номера вопроса отсутствует - назначается 1
    if (!params[:question].present?)
      params[:question] = 1
    end
    # Текущий вопрос, если неверно указан, то -  или первый или последний
    @current_que = params[:question].to_i
    @current_que = 1 if @current_que <= 0
    @current_que = session[:qty] if @current_que > session[:qty]
    # Заголовок
    @title = @exam.title
    @question = Question.find(session[:random_ids][@current_que-1])
    @answers = @question.answers
    @answers.shuffle! if @question.allow_mix?
  end

  def finish
    @exam = Exam.find(params[:id])
    @title = "The test results"
    @questions = Question.where(:id => session[:random_ids])
    @sections = Section.where(:id => @questions.pluck(:section_id).uniq)
    @score = 0
    @score_max = @questions.pluck(:difficult).inject{|sum,x| sum + x }
    @correctCount = 0
    r = Result.where(:session_id => session[:session_id], :user_id => 0, :exam_id => params[:id], :try => session[:try])
    if r.count > 0
      @result = r
      flash[:notice] = "An attempt to re-insert the results"
      @score = session[:score]
      @correctCount = session[:correctCount]
    else
      session[:random_ids].each_with_index do |id, index|
        try = session[:try]
        answer = session[:answer][index+1]

         wgt =   Weight(id, answer)

        score = wgt
        @score += score
        @correctCount += 1 if wgt  > 0
        result = Result.new(:session_id => session[:session_id], :user_id => 0, :exam_id => params[:id], :try => try, :question_id => id, :answer => answer, :weight => wgt, :score => score)
        result.save!
      end
      session[:score] = @score
      session[:correctCount] = @correctCount
      session[:finish_at] = (Time.now - session[:started_at]).round
      @result = Result.where(:session_id => session[:session_id], :user_id => 0, :exam_id => params[:id], :try => session[:try])
    end

@isPass = true
    # if @score > @exam.pass_score
    #  @isPass = true
    # else
    #   @isPass = false
    # end

  end

    private

  def Weight(question_id, answer)
    question_type = Question.find(question_id).type.id
    case question_type
    when 1
              if !answer.nil?
        wgt = Answer.find(answer.to_i).weight
        else
          wgt = 0
        end
      when 2
      
      if !answer.nil?
        answer.each do  |e| 
        wgt += Answer.find(e.to_i).weight
      end
        else
          wgt = 0
        end
   end
   wgt
  end

end
