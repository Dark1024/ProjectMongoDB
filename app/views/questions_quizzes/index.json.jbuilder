json.array!(@questions_quizzes) do |questions_quiz|
  json.extract! questions_quiz, :id, :quiz_id, :question_id, :user_answer
  json.url questions_quiz_url(questions_quiz, format: :json)
end
