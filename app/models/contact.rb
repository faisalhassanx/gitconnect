class Contact < ActiveRecord::Base
  validates :name,    presence:   true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  validates :email,   presence:   true, 
                      length:     { maximum: 255 },
                      format:     { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
  validates :message, presence:   true, length: { maximum: 500 }
  
end