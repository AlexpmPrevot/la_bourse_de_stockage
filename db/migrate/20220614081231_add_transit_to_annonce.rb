class AddTransitToAnnonce < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :transit, :boolean
  end
end
