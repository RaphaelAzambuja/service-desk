class User < ApplicationRecord
  belongs_to :created_by_user, class_name: 'User'
end
