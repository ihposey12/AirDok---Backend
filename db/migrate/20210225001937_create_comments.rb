class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.integer :user_id
      t.integer :hangar_id

      t.timestamps
    end
  end
end
