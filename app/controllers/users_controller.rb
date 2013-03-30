class UsersController < ApplicationController
  layout "admin"

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def sign_in
    @user = User.new
  end
end