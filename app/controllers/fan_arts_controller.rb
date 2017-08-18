class FanArtsController < ApplicationController
  def index
    @fan_arts = FanArt.all

  end

  def show
    @fan_art = FanArt.find(params[:id])
  end

  def new
    @fan_art = FanArt.new
  end
end
