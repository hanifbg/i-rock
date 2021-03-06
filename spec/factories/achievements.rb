FactoryGirl.define do
  factory :achievement do
    user
    sequence(:title) { |n| "Achievement #{n}" }
    description "description"
    feature false
    cover_image "some_file.png"

    factory :public_achievement do
      privacy :public_access
    end
    factory :private_achievement do
      privacy :private_access
    end
  end

end
