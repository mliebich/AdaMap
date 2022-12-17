class Embed
  include ActiveModel::Model
  include ActiveModel::Attributes
  include GlobalID::Identification
  include ActionText::Attachable

  require "oembed"

  attribute :id

  def self.find(id)
    new(id: id)
  end

  def embedcode
    oembed.html
  end

  def oembed
    OEmbed::Providers.register_all
    OEmbed::Providers.register_fallback(
      OEmbed::ProviderDiscovery,
      OEmbed::Providers::Noembed
    )
    OEmbed::Providers.get(id)
  end
end
