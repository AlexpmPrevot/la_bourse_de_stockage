class AddZipcodeToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :zipcode, :integer
  end
end
