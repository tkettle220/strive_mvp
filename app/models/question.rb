class Question < ApplicationRecord
  validates :question_text, :time_limit, presence: true

  
  has_many :answers,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Answer
  
  
end
