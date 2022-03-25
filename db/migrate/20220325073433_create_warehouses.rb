class CreateWarehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :warehouses do |t|
      t.string :city
      t.string :state
      t.string :postcode
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
