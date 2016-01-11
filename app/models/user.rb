class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, length: { maximum: 50 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 255 },
    presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, presence: true


  has_secure_password
end
