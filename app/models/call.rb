class Call < ApplicationRecord
  belongs_to :opened_by_user, class_name: 'User'
  belongs_to :assigned_user, class_name: 'User', optional: true
end
