class RenameRentalappToRentalApp < ActiveRecord::Migration
  def up
    rename_table :rentalapps, :rental_apps
  end

  def down
    rename_table :rental_apps, :rentalapps
  end
end
