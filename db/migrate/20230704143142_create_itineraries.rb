class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :day
      t.string :location
      t.text :activities

      t.timestamps
    end
  end
end
