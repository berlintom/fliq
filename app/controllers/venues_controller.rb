class VenuesController < ApplicationController
  def index
    @venues = Venue.all

      @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window_venue", locals: { venue: venue }),
        image_url: helpers.asset_url("ping-pong-marker.png")
      }
    end
  end
end
