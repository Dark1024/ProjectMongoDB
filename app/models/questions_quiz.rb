class QuestionsQuiz
  include Mongoid::Document
  key :quiz_id, Quiz
  key :question_id, Question
  field :user_answer, type: Integer
  
end
