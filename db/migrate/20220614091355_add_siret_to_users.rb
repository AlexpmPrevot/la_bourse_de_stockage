class AddSiretToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :siret, :bigint
  end
end
