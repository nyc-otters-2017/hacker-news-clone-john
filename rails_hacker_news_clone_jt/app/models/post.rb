class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :description, presence: true
  validates :title, length: {minimum: 3}
  validates :description, length: {in: 5..150}
end
