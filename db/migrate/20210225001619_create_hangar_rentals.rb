class CreateHangarRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :hangar_rentals do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
      t.integer :hangar_id

      t.timestamps
    end
  end
end
