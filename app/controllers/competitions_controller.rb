class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.paginate(page: params[:page], per_page: 20)
  end

  def show
    @competition = Competition.find(params[:id])
  end
end
