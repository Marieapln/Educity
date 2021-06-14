class AddCityToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :city, :string
    add_column :teams, :latitude, :float
    add_column :teams, :longitude, :float
  end
end
