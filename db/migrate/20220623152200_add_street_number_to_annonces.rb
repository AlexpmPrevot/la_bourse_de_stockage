class AddStreetNumberToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :street_number, :integer
  end
end
