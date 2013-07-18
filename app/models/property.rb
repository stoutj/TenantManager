class Property < ActiveRecord::Base
  attr_accessible :address

  has_many :rental_apps
  belongs_to :landlord

  validates :address, presence: true

end