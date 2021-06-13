class Api::V1::BackgroundsController < ApplicationController
  def index
    if params[:location]
      image = BackgroundFacade.get_city_image(params[:location])
      render json: ImageSerializer.new(image)
    else
      render json: { errors: 'Location not given' }, status: :bad_request
    end
  end
end
