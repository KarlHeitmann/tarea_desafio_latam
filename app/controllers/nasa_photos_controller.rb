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
    if params.has_key?(:page)
    # if (params.has_key?(:page) or params.has_key?(:))
      url = build_link
      uri = URI(url)
      resp = Net::HTTP.get(uri) # => String
      data = JSON.parse(resp)
      # puts resp
      @photos = data['photos']
      # puts @photos
    else
      @photos = []
    end

  end

  private
    def build_link
      "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&#{
        params.has_key?(:page) ? 'page=' + params[:page] + '&': ''
      }api_key=DEMO_KEY"
    end
end
