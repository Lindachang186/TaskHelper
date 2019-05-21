class SessionsController < ApplicationController

  def create
    if @user = User.find_by(name: params[:user][:name])
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id

      redirect_to '/users/home'
    elsif User.find_by(uid: auth[:uid])
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
      end
      session[:user_id] = @user.id
    end 
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end 

  private

  def auth
    request.env['omniauth.auth']
  end
 
end