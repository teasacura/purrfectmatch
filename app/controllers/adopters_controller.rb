class AdoptersController < ApplicationController

  def new

  end

  def show
    @adopter = Adopter.find(params[:id])
  end
end
