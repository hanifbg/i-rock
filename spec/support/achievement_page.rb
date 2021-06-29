class AchievementPage
  include Capybara::DSL

  def visit_page(achievement)
    visit("/achievement/#{achievement.id}")
    self
  end

  def encourage
    click_on("encourage-button")
    self
  end
end