class User < ActiveRecord::Base
  has_secure_password
  attr_accessible  :name, :age, :sex, :email, :country, :religion, :password, :password_confirmation

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :country, presence: true
  validates :password, length: { minimum: 6 }
  validates :age, :numericality => true

  has_many :articles

end




