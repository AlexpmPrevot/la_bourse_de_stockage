class AddAvailableToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :available, :boolean, default: true
  end
end
