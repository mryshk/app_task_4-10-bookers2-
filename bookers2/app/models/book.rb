class Book < ApplicationRecord
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user, dependent: :destroy
  validates :title,presence: true
  validates :body,presence: true, length: { maximum: 200 }


def favorite_by?(user)
  favorites.where(user_id: user.id).exists?

end

is_impressionable counter_cache: true

end
