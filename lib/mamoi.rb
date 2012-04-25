# -*- coding: utf-8 -*-
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
    "nemuiねむい寝向井ネムイ".reverse.each_char do |c|
      tweet(c)
    end
  end

  def tweet(s)
      puts s
      Twitter.update(s)
  end
end
