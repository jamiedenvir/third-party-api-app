class WeathersController < ApplicationController

  def index
    response = HTTP.get("http://api.weatherstack.com/current?access_key=#{Rails.application.credentials.api_key}&query=#{params[:search]}")
    
    render json: response.parse(:json)

  end

end
