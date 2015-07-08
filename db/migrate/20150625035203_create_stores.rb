class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end

    add_index :stores, [:latitude, :longitude]
  end
end
