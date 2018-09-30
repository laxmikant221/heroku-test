class UsersController < ApplicationController
before_action :find_user, only: %i[show]

def index; end
def create
 @user = User.new(user_params)
 @user.save
 redirect_to user_path(@user)
end
def update; end
def new
 @user = User.new
end
def show; 

end


private

def find_user
    @user = User.find(params[:id])
end

def user_params
    params.require(:user).permit(:name, :email)
end
end
