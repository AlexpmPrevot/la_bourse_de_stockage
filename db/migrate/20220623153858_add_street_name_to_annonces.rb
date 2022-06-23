class AddStreetNameToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :street_name, :string
  end
end
