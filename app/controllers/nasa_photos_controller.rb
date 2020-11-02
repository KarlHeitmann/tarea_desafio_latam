class NasaPhotosController < ApplicationController
  def index
    url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY'
    if params.has_key?(:page) or params.has_key?(:sol)
    # if (params.has_key?(:page) or params.has_key?(:))
      url = build_link
      puts url
      puts ENV["API_KEY"]
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
        params.has_key?(:page) ? 'page=' + params[:page] + '&' : ''
      }#{
        params.has_key?(:sol) ? 'sol=' + params[:sol] + '&' : ''
      }api_key=#{
        ENV["API_KEY"].nil? ? 'DEMO_KEY' : ENV["API_KEY"]
      }"
    end
end
