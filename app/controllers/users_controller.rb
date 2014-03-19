class UsersController < ApplicationController
  def register
  @user=User.new
  end
  def create
  @user =User.new(params[:user])
  if @user.save
  flash[:status] = TRUE
  flash[:alert] = "Congratulations You have successfuly registere"
  else
  flash[:status] = FALSE
  flash[:alert] = @user.errors.full_messages
  end
  redirect_to register_path
  end
end
