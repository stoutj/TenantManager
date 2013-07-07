class Property < ActiveRecord::Base
  attr_accessible :address

  has_many :rentalapps

end