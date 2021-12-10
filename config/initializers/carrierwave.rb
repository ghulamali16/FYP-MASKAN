# frozen_string_literal: true
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAYNOUZSEUKOIPRY5S',
      aws_secret_access_key: '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',
      region:'us-east-2'
    }
  config.storage = :fog
  config.permissions = 0o666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = "#{Rails.root}/public/"
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end
