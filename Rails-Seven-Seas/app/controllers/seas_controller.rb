class SeasController < ApplicationController
  
  def welcome
  end

  # gets '/seas'
  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  # get '/seas/:id'
  def show
    @sea = Sea.find(params[:id])
  end

  def create
    @sea = Sea.new(sea_params)
    @sea.save
    
    redirect_to sea_path(@sea)
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)

    redirect_to sea_path(@sea)
  end

  def delete
    @sea = Sea.find(params[:id])
    @sea.destroy
    redirect_to seas_path
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
