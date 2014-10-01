class QuestionsQuiz
  include Mongoid::Document
  field :quiz_id, Quiz
  field :question_id, Question
  field :user_answer, type: Integer
  
end
