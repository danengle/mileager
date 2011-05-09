class Vehicle
  include Mongoid::Document
  
  field :make, type: String
  field :model, type: String
  field :year, type: Integer
  field :total_mileage, type: Integer
  
  references_many :activities
  references_and_referenced_in_many :users
  
  scope :not_this, lambda {|vehicle_ids| where('vehicles.id not in (?)', vehicles_id) }
  
  def users_other_vehicles
    # user.vehicles.not_this(vehicle.id)
  end
end
