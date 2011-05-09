class FuelUp < Activity
  
  field :trip, type: Float
  field :volume, type: Float
  field :cost_per_unit, type: Float
  
  before_create :calculations
  
  def calculations
    # self.total_mileage = 
  end
end
