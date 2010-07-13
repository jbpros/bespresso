class DrinkersController < ApplicationController

  def index
    @drinkers = Drinker.all
  end

end
