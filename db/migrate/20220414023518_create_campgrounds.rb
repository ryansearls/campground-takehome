class CreateCampgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.string :campsites
      t.string :booked_dates
      t.string :price_range

      t.timestamps
    end
  end
end
