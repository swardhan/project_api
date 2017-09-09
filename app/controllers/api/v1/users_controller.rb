class Api::V1::UsersController < ApiController

  skip_before_action :authenticate_user, only: [:create, :show]
  before_action :set_user, only: [:show]

  def show
    render json: @user
  end

  def create
    # data = params['data']['user']
    @user = User.create(user_params)

    if @user.save
      render json: @user, status: :created#, location: api_v1_user_path(@user)
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :full_name)
  end

end
