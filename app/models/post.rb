class Post < ApplicationRecord
  validates :title, :url, presence: true

  belongs_to :user
  has_many :comments
end
