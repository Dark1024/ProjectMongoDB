json.array!(@questions) do |question|
  json.extract! question, :id, :question_text, :answer1, :answer2, :answer3, :answer4, :checked, :correct_answer, :question_id
  json.url question_url(question, format: :json)
end
