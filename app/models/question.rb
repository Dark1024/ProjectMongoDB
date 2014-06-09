class Question
  include Mongoid::Document
  
  field :question_text, type: String
  field :answer1, type: String
  field :answer2, type: String
  field :answer3, type: String
  field :answer4, type: String
  field :checked, type: Mongoid::Boolean
  field :correct_answer, type: Integer
  key :question_id, type: Integer
end
