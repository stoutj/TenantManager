class Property < ActiveRecord::Base
  attr_accessible :address

  has_many :rental_apps

  validates :address, presence: true

end