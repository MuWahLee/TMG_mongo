class SessionController < ApplicationController

  def new

    # render text: "Display the log in form"
    @messages = flash.map {| key, value| "#{key.capitalize}: #{value}"}.join(";")
  end

  def create
    # render text: "log the user in"
    # render text: "Log #{params[:user][:email]} in with #{params[:user][:password]}."
    # render text: User.authenticate(params[:user][:email], params[:user][:password]).email
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      render text: "Logged in #{@user.email}"
      # redirect_to root_url
    else
      # render text: "Who are you"
      # redirect_to login_url (same as "render :new")
      render :new
    end

  end


  def destroy
    # render text: "log the user out"
    session[:user_id] = nil
    redirect_to login_url, notice: "You've successfully logged out."

  end

end