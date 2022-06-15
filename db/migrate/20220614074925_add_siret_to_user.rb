class AddSiretToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :siret, :integer
  end
end
