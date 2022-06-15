class AddPhoneToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone, :integer
  end
end
