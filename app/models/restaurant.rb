class Restaurant < ApplicationRecord
  belongs_to :menu
  belongs_to :owner, class_name: "User"
end
