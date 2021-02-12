class User < ApplicationRecord
  before_save { self.email = email.downcase }
  enum access_level: { user: 0, admin: 1, owner: 2 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 80 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    # Beware: this uniqueness code IS NOT ENOUGH
                    #  Need to add Database index, migration
  has_secure_password
  validates :password, length: { minimum: 8 }
  
end
