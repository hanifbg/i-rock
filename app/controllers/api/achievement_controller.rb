class Api::AchievementController < ApiController
  def index
    achievement = Achievement.public_access
    render json: achievement
  end
end