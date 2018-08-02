class UsersController < ApplicationController
  def index
    # byebug
    @scores = HighScore.all
    render json: @scores
  end

  def create
    @user = User.find_or_create_by(name: user_params[:user])
    @highscore = HighScore.create({game: Game.first, user: @user, score: user_params[:score], user_name:@user.name, game_name: "asteroids"})
    render json: @highscore
  end
end
private
  def user_params
    params.permit(:user, :score)
  end
