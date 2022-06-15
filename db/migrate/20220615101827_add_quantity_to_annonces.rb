class AddQuantityToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :quantity, :integer
  end
end
