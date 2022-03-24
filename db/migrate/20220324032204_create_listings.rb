class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :category
      t.string :title
      t.integer :quantity
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
