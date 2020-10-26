require 'twitter' #gem install twitter
while true
    begin
        # Create a read write application from : 
        # https://apps.twitter.com
        # authenticate it for your account
        # fill in the following
        config = {
            consumer_key:         'tkzJDaDrUud1hgtX8rR6k3GyC',
            consumer_secret:     'CccgeoD0gKtscY2YKWF97iZWJLfJdxEo0fgoAa3zI2OP6vkeEb',
            access_token:        '744842330050465793-W7uiqCUx5mIH5yyQvGOLcZl2sqrEmlw',
            access_token_secret: 'Kq6KQDoVBt3Y7jEio6VCyIiAwU21v4Purrj1dETErckIG'
        }
        rClient = Twitter::REST::Client.new config
        sClient = Twitter::Streaming::Client.new(config)

        # topics to watch
        topics = ['#rails', '#rails']
      
        end
    rescue
        puts 'error occurred, waiting for 5 seconds'
        sleep 5
    end

end