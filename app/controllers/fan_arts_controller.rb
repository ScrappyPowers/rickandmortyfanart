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

  def create
    @fan_art = FanArt.new(fan_art_params)

    if @fan_art.save
      redirect_to @fan_art
    else
      render :new
    end
  end

  private

  def fan_art_params
    params.require(:fan_art).permit(:title, :author, :description)
  end
end
