class SessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Has iniciado sesion!"
    else
      flash.now.alert = "Error en email o password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
