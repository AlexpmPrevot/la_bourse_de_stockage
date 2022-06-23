class AddAddressComplementToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :address_complement, :string
  end
end
