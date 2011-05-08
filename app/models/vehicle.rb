class Vehicle
  include Mongoid::Document
  
  field :make, type: String
  field :model, type: String
  field :year, type: Integer
  field :total_mileage, type: Integer
  
  references_many :activities
  references_and_referenced_in_many :users
end
