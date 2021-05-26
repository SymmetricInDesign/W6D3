
class UsersController < ApplicationController

    def create
        # user = User.create!(params.require(:user).permit(:email, :name))
        # str = "12ajsdlfjasdflk"
        # replace the `user_attributes_here` with the actual attribute keys
        # redirect_to '/users'
        # redirect_to action: 'index', user: str
        # self.index
        
          user = User.new(params.require(:user).permit(:name, :email))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        u = User.find(params[:id])
        u.update(name: params[:name], email: params[:email])
    end
    def destroy
        u = User.find(params[:id])
        u.delete
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