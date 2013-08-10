class Result < ActiveRecord::Base
  # answer may be string value or answer id or something else
  attr_accessible :answer, :question_id, :exam_id, :session_id, :user_id, :try, :weight, :score

  belongs_to   :question
end
