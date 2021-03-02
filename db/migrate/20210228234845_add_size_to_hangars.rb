class AddSizeToHangars < ActiveRecord::Migration[6.1]
  def change
    add_column :hangars, :size, :string
  end
end
