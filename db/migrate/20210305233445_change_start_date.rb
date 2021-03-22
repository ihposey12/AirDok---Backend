class ChangeStartDate < ActiveRecord::Migration[6.1]
  def change
    change_column :hangar_rentals, :start_date, :string
  end
end
