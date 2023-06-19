class CreatePigeons < ActiveRecord::Migration[7.0]
  def change
    create_table :pigeons do |t|
      t.string :name
      t.string :descriptif
      t.integer :price
      t.integer :rating
      t.string :color

      t.timestamps
    end
  end
end
