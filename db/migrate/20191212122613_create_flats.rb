class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.text :name
      t.text :address
      t.text :description
      t.text :price_per_night
      t.integer :number_of_guests
      t.string :pic_url, array: true

      t.timestamps
    end
  end
end
