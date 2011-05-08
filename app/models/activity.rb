class Activity
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia
  
  field :cost, type: Float
  field :total_mileage, type: Integer
  
  belongs_to :vehicle
  belongs_to :user
end
