class SessionController < ApplicationController

  def new
    render text: "Display the log in form"
  end

  def create
    render text: "log the user in"
  end

  def destroy
    render text: "log the user out"
  end

end