class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia
  include Mongoid::Versioning
  max_versions 5
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :name
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  references_and_referenced_in_many :vehicles
  references_many :activities
  has_one :default_vehicle, :class => 'Vehicle', :foreign_key => :default_vehicle_id
  has_one :creator, :class => 'User', :foreign_key => :creator_id
  
  def my_vehicle
    vehicles.create(
      :name => 'My Car'
    ) if vehicles.blank?
    default_vehicle
  end

end

