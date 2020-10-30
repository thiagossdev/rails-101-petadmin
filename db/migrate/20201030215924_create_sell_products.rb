class CreateSellProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :sell_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :sell, null: false, foreign_key: true

      t.timestamps
    end
  end
end
