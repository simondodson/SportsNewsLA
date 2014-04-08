class KingsController < ApplicationController
  def index
    render json: King.all
  end

  def official
    render json: King.where(source: "Official Site")
  end
end