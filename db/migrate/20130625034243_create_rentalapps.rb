class CreateRentalapps < ActiveRecord::Migration
  def change
    create_table :rentalapps do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :propertyaddress

      t.timestamps
    end
  end
end
