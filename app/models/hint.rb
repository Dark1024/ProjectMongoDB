class Hint
  include Mongoid::Document
  
  field :hint_id, type: Integer
  field :tip, type: String
  field :tutor_id, type: Integer
end
