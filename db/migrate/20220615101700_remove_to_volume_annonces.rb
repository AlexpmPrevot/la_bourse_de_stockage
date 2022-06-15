class RemoveToVolumeAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :volume
  end
end
