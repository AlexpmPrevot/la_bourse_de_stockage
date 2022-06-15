class RemovePalletsToAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :pallets
  end
end
