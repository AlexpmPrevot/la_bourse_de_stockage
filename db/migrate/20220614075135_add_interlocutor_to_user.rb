class AddInterlocutorToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :interlocutor, :string
  end
end
