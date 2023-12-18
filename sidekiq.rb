Sidekiq.configure_server do |config|
    config.redis = { url: 'redis://192.168.1.137:6379/0' }
end
  
Sidekiq.configure_client do |config|
    config.redis = { url: 'redis://192.168.1.137:6379/0' }
end