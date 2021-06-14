class RemoveCityFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
    remove_column :users, :city, :string
  end
end
