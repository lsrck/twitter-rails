class SendTweet

	def initialize(tweet)
		@tweet = tweet
	end

	def perform
		log_in_to_twitter
		send_tweet(@tweet)
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
  	config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  	config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  	config.access_token        = ENV["ACCESS_TOKEN"]
  	config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
		end
	end

	def send_tweet(tweet)
		@client.update(tweet)
	end

end