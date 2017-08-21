class SessionsController < ApplicationController
   def new
   end

   def create
     #user = User.find_by(email: params[:sessions][:email])
     user = params[:email][:sessions].reject(&:blank?) unless params[:email].nil?
     if user && user.authenticate(params[:sessions][:password])
       log_in(user)
       redirect_to user_path

     #else
      # render :new
     end
   end

   def destroy
     log_out if logged_in?
     redirect_to root_path
   end
 end