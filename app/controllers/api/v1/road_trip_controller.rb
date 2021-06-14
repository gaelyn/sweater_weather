class Api::V1::RoadTripController < ApplicationController
  def create
    trip = RaodTripFacade.get_road_trip(params[:origin], params[:destination])
    render json: RaodTripSerializer.new(trip)
    require "pry"; binding.pry
  end

  # private
  #
  # def _params
  #   params.permit(:)
  # end
end
