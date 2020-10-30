class CreateSells < ActiveRecord::Migration[5.2]
  def change
    create_table :sells do |t|
      t.decimal :total
      t.references :discount, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.text :observations
      t.integer :status
      t.date :date

      t.timestamps
    end
  end
end
