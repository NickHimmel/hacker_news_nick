class Post < ApplicationRecord
  validates :title, :url, presence: true

  belongs_to :user
  has_many :comments
  after_initialize :set_defaults

  def set_defaults
    self.vote ||= 0
  end

end
