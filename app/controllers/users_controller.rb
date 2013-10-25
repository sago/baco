class UsersController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, :notice => "Usuario registrado con exito"
    else
      render "new"
    end
  end
end
