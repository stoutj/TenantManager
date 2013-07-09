class AddIncomeToRentalApp < ActiveRecord::Migration
  def change
    add_column :rental_apps, :employment_income, :string
    add_column :rental_apps, :other_income, :string
    add_column :rental_apps, :smoke, :string
    add_column :rental_apps, :eviction_history, :string
    add_column :rental_apps, :criminal_history, :string
    add_column :rental_apps, :bankruptcy, :string
    add_column :rental_apps, :explanation, :text
  end
end