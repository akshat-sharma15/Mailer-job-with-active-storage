class UsersController < ApplicationController
  def index
    @user = User.all 
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        UserMailerJob.perform_later(@user)
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
      else
        render :new, status: :unprocessable_entity
        format.html { render action: 'new' }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :dob, :avatar)
  end
end
