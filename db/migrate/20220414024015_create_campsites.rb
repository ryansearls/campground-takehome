class CreateCampsites < ActiveRecord::Migration[6.1]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :campground
      t.string :booked_dates
      t.string :price

      t.timestamps
    end
  end
end
