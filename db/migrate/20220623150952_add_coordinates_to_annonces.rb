class AddCoordinatesToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :latitude, :float
    add_column :annonces, :longitude, :float
  end
end
