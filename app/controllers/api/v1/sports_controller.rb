class Api::V1::SportsController < ApplicationController
  def index
    sports = Sport.all
    render json: sports, status: 200
  end

  def create
    sport = Sport.new(
      name: sport_params[:name],
      minutes: sport_params[:minutes],
      hours: sport_params[:hours],
      seconds: sport_params[:seconds],
      distance: sport_params[:distance],
      notes: sport_params[:notes]
    )

    if sport.save
      render json: sport, status: 200
    else
      render json: { error: 'Error creating sport' }
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
    params.require(:sport).permit(%i[name minutes hours seconds distance notes])
  end
end
