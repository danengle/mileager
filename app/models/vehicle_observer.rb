class VehicleObserver < Mongoid::Observer
  
  def after_create(vehicle)
    vehicle.creator.update_attributes(
      :default_vehicle_id => vehicle.id
    ) if vehicle.creator.default_vehicle.blank?
  end
end
