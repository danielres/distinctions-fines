Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, ENV['OAUTH_FACEBOOK_CONSUMER_KEY'], ENV['OAUTH_FACEBOOK_CONSUMER_SECRET']
end

