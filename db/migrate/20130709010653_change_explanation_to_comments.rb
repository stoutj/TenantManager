class ChangeExplanationToComments < ActiveRecord::Migration
  def up
        rename_column :rental_apps, :explanation, :comments
  end

  def down
  end
end
