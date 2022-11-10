class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, email: true, uniqueness: { case_sensitive: false }
  validates :possword, passwod: true

end
