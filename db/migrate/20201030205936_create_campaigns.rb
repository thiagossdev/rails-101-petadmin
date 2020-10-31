class CreateCampaigns < ActiveRecord::Migration[4.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
