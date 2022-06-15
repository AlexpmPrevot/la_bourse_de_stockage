class AddStockTypeToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :stock_type, :integer
  end
end
