require 'twitter'

class Mamoi
  def initialize(conf)
    Twitter.configure do |config|
      config.consumer_key = conf['consumer_key']
      config.consumer_secret = conf['consumer_secret']
      config.oauth_token = conf['oauth_token']
      config.oauth_token_secret = conf['oauth_token_secret']
    end
  end

  def mamoi
    "nemui.".reverse.each_char do |c|
      puts c
      Twitter.update(c)
      sleep 5
    end
  end

end
