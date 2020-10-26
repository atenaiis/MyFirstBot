
require 'twitter'


        # Create a read write application from : 
        # https://apps.twitter.com
        # authenticate it for your account
        # fill in the following
        client = Twitter::REST::Client.new do |config|
            config.consumer_key =         'tkzJDaDrUud1hgtX8rR6k3GyC'
            config.consumer_secret =     'CccgeoD0gKtscY2YKWF97iZWJLfJdxEo0fgoAa3zI2OP6vkeEb'
            config.access_token =        '744842330050465793-W7uiqCUx5mIH5yyQvGOLcZl2sqrEmlw'
            config.access_token_secret = 'Kq6KQDoVBt3Y7jEio6VCyIiAwU21v4Purrj1dETErckIG'
        end
        client.search('#ruby', result_type: "recent").take(3).each do |tweet|
        client.update  ("#{tweet.user.screen_name}: #{tweet.text}")
          end
          