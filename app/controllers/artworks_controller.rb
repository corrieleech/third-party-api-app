class ArtworksController < ApplicationController
 
  def index
    api = Rails.application.credentials.harvard.api_key
    artworks = HTTP.get("https://api.harvardartmuseums.org/object?medium=2028206&apikey=#{api}").parse(:json)["records"]
    render json: artworks
  end

end
