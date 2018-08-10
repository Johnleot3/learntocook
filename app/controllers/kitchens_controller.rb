class KitchensController < ApplicationController

  def index
    @kitchens = Kitchen.where(location: params["location"])
    @kitchens = Kitchen.all if @kitchens.empty?
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    @user = current_user
    if @kitchen.save
      render "users/show"
    else
      redirect_to root_path
    end
  end

  def edit
    @kitchen = Kitchen.find(params[:id])
  end

  def update
    @kitchen = Kitchen.find(params[:id])
    @kitchen.update(kitchen_params)
  end

  def destroy
    @kitchen = Kitchen.find(params[:id])
    @kitchen.destroy

    redirect_to kitchen_path
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name, :capacity, :location, :price, :description, :category, languages: [])
  end

end
