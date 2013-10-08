CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJIYTFYPIMW2WBHMQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'uploads'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.asset_host     = nil #'https://assets.example.com'            # optional, defaults to nil
end



if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end