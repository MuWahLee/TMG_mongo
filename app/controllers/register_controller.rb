class RegisterController < ApplicationController

  BLANK_FIELDS = "fields cannot be blank"
  ALREADY_A_USER = "You've already registered.  Sign in or reset your password."
  NO_MATCH = "Your password doesn't match your password_confirmation."

  def new_user
  end

  def register
    if (params[:user][:email]).blank? or (params[:user][:password]).blank? or (params[:user][:password_confirmation]).blank?
      # if params[:password].blank?
      # if params[:user][:email][:password][:password_confirmation].blank?
      flash.now[:alert] = BLANK_FIELDS
      # end
    elsif
      @user == User.find_by(email: params[:email])
        flash.now[:alert] = ALREADY_A_USER
          # redirect_to root_url and return
    elsif
      params([:user][:password]) != params[:user][:password_confirmation]
        flash.now[:alert] = NO_MATCH
    end
      render :new_user
      # else
      #   u = User.new
      #     u.save
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end