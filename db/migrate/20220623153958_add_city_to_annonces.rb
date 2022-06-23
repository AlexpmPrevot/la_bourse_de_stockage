class AddCityToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :city, :string
  end
end
