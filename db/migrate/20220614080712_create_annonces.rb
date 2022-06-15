class CreateAnnonces < ActiveRecord::Migration[6.1]
  def change
    create_table :annonces do |t|
      t.string :name
      t.string :address
      t.integer :surface
      t.integer :volume
      t.integer :pallets
      t.integer :temperature
      t.text :description
      t.integer :price
      t.integer :rental
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
