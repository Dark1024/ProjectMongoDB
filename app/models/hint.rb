class Hint
  include Mongoid::Document
  
  key :hint_id, type: Integer
  field :tip, type: String
  field :tutor_id, User
end
