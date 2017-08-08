class Message < ActiveRecord::Base
  validates :name, presence: true
  VALID_EMAIL_REG = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REG }
  validates :body, presence: true
end
