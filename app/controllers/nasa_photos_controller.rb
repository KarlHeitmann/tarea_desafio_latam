class NasaPhotosController < ApplicationController
  def index
    url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY'
=begin
    uri = URI(url)
    # uri = URI('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    # request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
    request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})
    # request = Net::HTTP::Get.new(uri.path)

    request.body = {} # SOME JSON DATA e.g {msg: 'Why'}.to_json
    puts request

    response = http.request(request)

    body = JSON.parse(response.body) # e.g {answer: 'because it was there'}
    puts body
=end
    uri = URI(url)
    resp = Net::HTTP.get(uri) # => String
    @data = JSON.parse(resp)
    # puts resp
    puts @data

  end
end
