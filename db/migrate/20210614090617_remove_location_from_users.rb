class RemoveLocationFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
    remove_column :users, :name, :string
    remove_column :users, :address, :string
    remove_column :users, :location, :string
  end
end
