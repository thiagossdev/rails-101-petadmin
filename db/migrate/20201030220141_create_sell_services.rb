class CreateSellServices < ActiveRecord::Migration[6.0]
  def change
    create_table :sell_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :sell, null: false, foreign_key: true

      t.timestamps
    end
  end
end
