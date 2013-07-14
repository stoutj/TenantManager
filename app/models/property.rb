class Property < ActiveRecord::Base
  attr_accessible :address, :rentalapps

  has_many :rentalapps

  validates :address, presence: true

end