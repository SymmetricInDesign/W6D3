
class UsersController < ApplicationController
    def user_params(params)
        params.require(:user).permit(:username)
    end
    def create
        user = User.new(user_params(params))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        u = User.find(params[:id])
   
        if !u.update(user_params(params))
            render json: u.errors.full_messages, status: :unprocessable_entity
        else
        redirect_to ("/users")
        end
    end
    def destroy
        u = User.find(params[:id])
        render json: u.destroy
    end
    def edit
        
    end
    def new
        
    end
    def show
        render json: User.find(params[:id])
    end
    def index
        render json: User.all
    end

end