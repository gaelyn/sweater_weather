class Api::V1::BackgroundsController < ApplicationController
  def index
    image = BackgroundFacade.get_city_image(params[:location])
    render json: ImageSerializer.new(image)
  end
end
