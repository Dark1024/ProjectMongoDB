class Quiz
  include Mongoid::Document
  
  field :quiz_id, type: Integer
  field :questions_numbers, type: Integer
  field :title, type: String
  field :value, type: Integer
  field :description, type: String
end
