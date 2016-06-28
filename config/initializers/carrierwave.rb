CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AMAZON_KEY"],                        # required
    :aws_secret_access_key  => ENV["AMAZON_SECRET_KEY"]                         # required
  }
  config.fog_directory  = ENV["AMAZON_BUCKET"]                     # required
end