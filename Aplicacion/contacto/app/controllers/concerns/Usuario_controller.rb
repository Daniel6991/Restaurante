class UsersController < ApplicationController
   def new
     @user = User.new
   end
   def create
     @user = User.new(user_params)
     if @user.save
       log_in(@user)
       redirect_to user_path
     else
       flash[:alert] = @user.errors.full_messages
       render :new
     end
   end

   private
     def user_params
       params.require(:user).permit(:name, :email, :password, :password_confirmation)
     end
 end
class SessionsController < ApplicationController
   def new
   end

   def create
     user = User.find_by(email: params[:session][:email])
     if user && user.authenticate(params[:session][:password])
       log_in(user)
       redirect_to user_path
     else
       render :new
     end
   end

   def destroy
     log_out if logged_in?
     redirect_to root_path
   end
 end