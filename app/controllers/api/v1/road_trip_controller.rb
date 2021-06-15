class Api::V1::RoadTripController < ApplicationController
  def create
    trip = MapFacade.get_road_trip(params[:origin], params[:destination])
    render json: RoadtripSerializer.new(trip)
  end
end
