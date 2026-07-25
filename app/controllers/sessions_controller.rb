class SessionsController < ApplicationController
  def update
    session[:user_id] = params[:user_id]

    redirect_back fallback_location: root_path
  end
end