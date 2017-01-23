class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {in: 5..10}
  validates :password, length: {minimum: 6}
  has_secure_password
end
