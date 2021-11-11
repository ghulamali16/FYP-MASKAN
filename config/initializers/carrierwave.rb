# frozen_string_literal: true

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'sfnkjdnmksnksnnsfndm',
    aws_secret_access_key: 'jdanjnsdjnajsdndnjas'
  }
  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = ENV['FOG_DIRECTORY']
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end
