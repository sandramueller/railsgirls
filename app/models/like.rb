class Like < ApplicationRecord
  belongs_to :idea
  belongs_to :user
  validates :user, uniqueness: { scope: :idea,
    message: "user can only like an idea once"}
end
