class SessionController < ApplicationController

  def new

    # render text: "Display the log in form"
    # @messages = flash.map {| key, value| "#{key.capitalize}: #{value}"}.join(";")
    redirect_to root_url, notice: "you are logged in." if current_user
  end

  def create
    # render text: "log the user in"
    # render text: "Log #{params[:user][:email]} in with #{params[:user][:password]}."
    # render text: User.authenticate(params[:user][:email], params[:user][:password]).email
    user = User.find_by(email: params[:user][:email])
    password = params[:user][:password]

    if password.blank?
      user.set_password_reset
      UserNotifier.reset_password(user).deliver
      flash.now[:notice] = "Password reset - We'll send you an email."
      render :new
      # render text: "Time to reset password"
    elsif user and user.authenticate(password)
      session[:user_id] = user.id
      # render text: "Logged in #{@user.email}"
      redirect_to root_url
    else
      # render text: "Who are you"
      # redirect_to login_url (same as "render :new")
      flash.now[:alert] = "unable to log you in. Please check your email and password and try again."
      render :new
    end

  end


  def destroy
    # render text: "log the user out"
    session[:user_id] = nil
    redirect_to login_url, notice: "You've successfully logged out."

  end

end