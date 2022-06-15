class AddVatToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :vat, :string
  end
end
