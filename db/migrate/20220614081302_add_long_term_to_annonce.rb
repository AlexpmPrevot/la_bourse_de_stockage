class AddLongTermToAnnonce < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :long_term, :boolean
  end
end
