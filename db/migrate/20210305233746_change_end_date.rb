class ChangeEndDate < ActiveRecord::Migration[6.1]
  def change
    change_column :hangar_rentals, :end_date, :string
  end
end
