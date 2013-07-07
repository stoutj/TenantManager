class AddPropertyToRentalapps < ActiveRecord::Migration
  def change
    add_column :rentalapps, :property_id, :integer
  end
end
