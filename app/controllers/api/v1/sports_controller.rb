class Api::V1::SportsController < ApplicationController
  def index
    sports = Sport.all
    render json: sports, status: :ok
  end

  def create
    sport = Sport.new(sport_params)

    if sport.save
      render json: sport, status: :ok
    else
      render json: { error: 'Error creating sport' }
    end
  end

  def update
    sport = Sport.find(params[:id])

    if sport.update(sport_params)
      render json: sport, status: :ok
    else
      render json: { error: 'Error updating sport' }
    end
  end

  def show
    sport = Sport.find_by(id: params[:id])

    if sport
      render json: sport, status: :ok
    else
      render json: { error: 'Sport Not Found.' }
    end
  end

  private

  def sport_params
    params.permit(%i[name minutes hours seconds distance notes])
  end
end
