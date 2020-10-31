class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :body, presence: true

  after_save :schedule_emails

  def fae_display_field
    title
  end

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients, dependent: :destroy

  def schedule_emails
    Client.all.each do |client|
      CampaignClient.create(campaign: self, client: client)
      CampaignJob.perform_later client, self.title, self.body
    end
  end
end
