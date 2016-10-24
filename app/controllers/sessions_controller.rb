require 'byebug'
class SessionsController < ApplicationController
  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:login, :new, :create]
 
def new
end 
def login

end

def create
  #byebug
  #if !params[:name] || params[:name].empty?
    if !params[:name] || params[:name].empty?
                       #   render :login
       redirect_to :login
    else
      session[:name] = params[:name]
      # byebug
      redirect_to controller: 'application', action: 'hello'
    end
     #redirect_to (controller: 'application', action: 'hello')
  #end
end

def destroy
  if session[:name].empty?
    redirect_to controller: 'application', action: 'hello'
  else 
    session[:name] = nil 
    redirect_to :login
  end
end 

end 