class Achievement < ActiveRecord::Base
  enum privacies: [:public_access, :private_access, :friend_access]
end
