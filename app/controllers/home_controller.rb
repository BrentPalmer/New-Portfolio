class HomeController < ApplicationController
  def index
  end

  def create_email
    @info = {name: params[:name], email: params[:email], message: params[:message]}
    
    ContactMailer.contact_email(@info)
    flash[:notice] = "Thank you for the message!"
    redirect_to :back
  end
end