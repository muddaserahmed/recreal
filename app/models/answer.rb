class Answer < ActiveRecord::Base
  attr_accessible :question_id, :title, :weight

  belongs_to :question

  validates_associated :question
  validates_presence_of :question
  validates :title, :presence => true,
            :length => { :minimum => 1 }
  validates_numericality_of :weight

end
