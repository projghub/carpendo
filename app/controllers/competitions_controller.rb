class CompetitionsController < ApplicationController
  def index
    @competition = Competition.new(name: 'New competition')
  end
end
