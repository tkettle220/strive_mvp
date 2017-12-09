class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true


  has_many :answers,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Answer,
    dependent: :destroy
  
  has_many :answered_questions,
    through: :answers,
    source: :questions
end
