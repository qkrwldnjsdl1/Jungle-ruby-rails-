class User < ActiveRecord::Base
    
    has_secure_password
    validates :password, length: { in: 6..20 }
    validates :name, presence: true
    validates :email, presence: true
    before_save { self.email.downcase!}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email

end
