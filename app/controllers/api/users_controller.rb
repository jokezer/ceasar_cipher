class Api::UsersController < Api::BaseController
  def create
    user = User.new(user_params)

    if(user.save)
      render json: user, status: :ok
    else
      render json: { errors: user.errors }, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by!(url_alias: params[:id])
    render json: user, status: :ok
  end

  def update
    user = User.find_by!(url_alias: params[:id])

    if(user.update(user_params))
      render json: user, status: :ok
    else
      render json: { errors: user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, message_attributes: [:id, :shift, :content])
  end
end
