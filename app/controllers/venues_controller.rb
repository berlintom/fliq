class VenuesController < ApplicationController

  def index
    @venues = Venue.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end
  end
  # to be edited
  # def venue_params
  #   params.require(:venue).permit(:title, :body, photos: [])
  # end

end
