require 'net/http'
require 'uri'

10.times do |i|
    uri = URI.parse("http://stackoverflow.com/questions/15804425/curl-on-ruby-on-rails")
    response = Net::HTTP.get_response(uri)
    # p "\n\n\n\n\n\t\t #{i} \n\n\n"
    p response.body.length #+ "\n\n\n\n"
end

# response.code
# response.body