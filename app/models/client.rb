class Client < ApplicationRecord
  include Fae::BaseModelConcern

  validates :phone, presence: true
  validates :email,
    uniqueness: true,
    presence: true,
    format: {
      with: Fae.validation_helpers.email_regex,
      message: 'You need use a valid and unique email'
    }

  def fae_display_field
    name
  end

  has_many :campaign_clients
  has_many :campaigns, through: :campaign_clients, dependent: :destroy
end
