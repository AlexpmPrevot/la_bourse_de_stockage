class RemoveRentalToAnnonce < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :rental
  end
end
