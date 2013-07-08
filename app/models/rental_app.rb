class RentalApp < ActiveRecord::Base
  attr_accessible  :email, :firstname, :lastname, :propertyaddress, :date_of_birth, :home_phone
  attr_accessible  :work_phone, :state_id_number, :state_issued, :current_employer_name
  attr_accessible  :current_employer_address, :current_employer_phone, :current_employer_length_of_employ
  attr_accessible  :current_employer_still_employed, :past_employer_name, :past_employer_address
  attr_accessible  :past_employer_phone, :past_employer_start_date, :past_employer_end_date

  belongs_to :property

  validates :email, format: { with: /@/ }, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :propertyaddress, presence:true
  validates :home_phone, presence: true


end
