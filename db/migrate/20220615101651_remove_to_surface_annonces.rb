class RemoveToSurfaceAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :surface
  end
end
