class AddCountryComplementToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :country, :string
  end
end
