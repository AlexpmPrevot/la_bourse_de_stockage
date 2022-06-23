class RemoveAddressToAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :address
  end
end
