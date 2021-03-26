class Api::V1::SportsController < ApplicationController
  def index
    sports = Sport.all
    render json: sports, status: 200
  end

  def create
    sport = Sport.new(
      name: sport_params[:name],
      time: sport_params[:time],
      distance: sport_params[:distance],
      type: sport_params[:type],
      notes: sport_params[:notes]
    )

    if sport.save
      render json: sport, status: 200
    else
      render json: { error: 'Error creating sport8' }
    end
  end

  def show
    sport = Sport.find_by(id: params[:id])

    if sport
      render json: sport, status: 200
    else
      render json: { error: 'Sport Not Found.' }
    end
  end

  private

  def sport_params
    params.require(:sport.permit(%i[name time distance type notes]))
  end
end
