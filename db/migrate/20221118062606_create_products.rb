class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :size
      t.string :details
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
