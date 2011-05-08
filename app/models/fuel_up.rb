class FuelUp
  include Mongoid::Document
  
  field :odometer, type: Float
  field :gallons, type: Float
  field :price_per_gallon, type: Float
  field :cost, type: Float
  
  embedded_in :user
end
