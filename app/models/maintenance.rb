class Maintenance
  include Mongoid::Document
  field :cost, type: Float
  field :summary, type: String
  
  embedded_in :user
end
