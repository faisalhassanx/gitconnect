class Profile < ActiveRecord::Base
  belongs_to :user
  
  validates :first_name,    presence:   true, length: { maximum: 50 }
  validates :last_name,     presence:   true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  validates :email,   presence:   true, 
                      length:     { maximum: 255 },
                      format:     { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
  validates :job_title,     presence:   true, length: { maximum: 50 }
  validates :company,       length: { maximum: 50 }
  validates :about,         presence:   true, length: { maximum: 500 }
  
end