class AddEmployersToRentalApp < ActiveRecord::Migration
  def change
    add_column :rental_apps, :date_of_birth, :string
    add_column :rental_apps, :home_phone, :string
    add_column :rental_apps, :work_phone, :string
    add_column :rental_apps, :state_id_number, :string
    add_column :rental_apps, :state_issued, :string
    add_column :rental_apps, :current_employer_name, :string
    add_column :rental_apps, :current_employer_address, :string
    add_column :rental_apps, :current_employer_phone, :string
    add_column :rental_apps, :current_employer_length_of_employ, :string
    add_column :rental_apps, :current_employer_still_employed, :string
    add_column :rental_apps, :past_employer_name, :string
    add_column :rental_apps, :past_employer_address, :string
    add_column :rental_apps, :past_employer_phone, :string
    add_column :rental_apps, :past_employer_start_date, :string
    add_column :rental_apps, :past_employer_end_date, :string
  end
end
