class CreateCampaignClients < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_clients do |t|
      t.references :campaign, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
