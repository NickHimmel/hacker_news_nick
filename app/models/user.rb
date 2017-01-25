class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6}
  has_secure_password
  before_validation { self.password_confirmation ||= password }

  has_many :posts
  has_many :comments
end
