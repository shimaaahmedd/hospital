class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
                      uniqueness: {case_sensitive: false}, 
                      length: {maximum: 105},
                      format: { with: VALID_EMAIL_REGEX }

    PASSWORD_REQUIREMENTS = /\A
        (?=.{8,}) # At least 8 characters long
        (?=.*\d) # Contain  at least one number
        (?=.*[a-z]) # Contain at least one lowercase letter
        (?=.*[A-Z]) # Contain at least one uppercase letter
        (?=.*[[:^alnum:]]) # Contain at least one symbol
    /x 

    validates :password, format: {with: PASSWORD_REQUIREMENTS, message: " must consist of small and capital letters, numbers and must be of at least 8 characters"}
    has_secure_password

end
