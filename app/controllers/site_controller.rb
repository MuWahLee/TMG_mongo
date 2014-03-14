class SiteController < ApplicationController

  before_action :is_authenticated?

  def index
    @users = User.all.entries
    # render text: is_authenticated?
  end

  def privacy
  end

  def terms
  end



end