class NasaPhotosController < ApplicationController
  def index
    url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY'
=begin
    uri = URI(url)
    resp = Net::HTTP.get(uri) # => String
    @data = JSON.parse(resp)
    # puts resp
    puts @data
=end

  end
end
