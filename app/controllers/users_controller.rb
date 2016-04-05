class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @rols = Rol.all
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to root_path, notice: "Empleado creado satisfactoriamente"}
      else
        format.html {redirect_to root_path, notice: "Empleado no se pudo crear"}
      end

    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :lastname, :password, :password_confirmation, :rol_id)
  end
end
