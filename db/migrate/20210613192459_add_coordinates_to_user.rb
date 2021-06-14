class AddCoordinatesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :name, :string
    add_column :users, :address, :string
  end
end
