class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
    end
    @kitchens = Kitchen.all
  end
end
