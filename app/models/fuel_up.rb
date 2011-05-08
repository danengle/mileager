class FuelUp < Activity
  
  field :odometer, type: Float
  field :gallons, type: Float
  field :price_per_gallon, type: Float
  
  before_create :calculations
  
  def calculations
    # self.total_mileage = 
  end
end
