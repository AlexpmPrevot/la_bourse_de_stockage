class RemoveSiretToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :siret
  end
end
