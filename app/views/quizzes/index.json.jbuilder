json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :questions_numbers, :title, :value, :description
  json.url quiz_url(quiz, format: :json)
end
