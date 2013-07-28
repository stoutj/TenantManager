class Property < ActiveRecord::Base
  attr_accessible :address, :address2, :zipcode, :landlord_id

  has_many :rental_apps
  belongs_to :landlord

  validates :address, presence: true
  validates :zipcode, presence: true

  def self.for(landlord)
    where(Landlord_id: landlord.id) unless landlord.nil?
  end

end