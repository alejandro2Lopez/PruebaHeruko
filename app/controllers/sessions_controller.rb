class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user.present? && user.password == params[:password]
      session[:user_id] = user.id
      flash[:success] = 'Bienvenido'
      redirect_to owners_path
    else
      flash[:danger] = 'Correo o contraseña incorrecto'
      redirect_to sign_in_path
    end
  end
end
