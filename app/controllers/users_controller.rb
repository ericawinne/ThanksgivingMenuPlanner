class UsersController < ApplicationController

  def show
    @user = current_user
    @recipes_claimed = @user.recipes
  end
end
