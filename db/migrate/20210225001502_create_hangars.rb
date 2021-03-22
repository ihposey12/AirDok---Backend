class CreateHangars < ActiveRecord::Migration[6.1]
  def change
    create_table :hangars do |t|
      t.string :title
      t.string :description
      t.string :airport_codesize
      t.string :city
      t.string :state
      t.integer :price
      t.string :picture

      t.timestamps
    end
  end
end
