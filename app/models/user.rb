class User < ApplicationRecord
    has_secure_password
    validates :email_address, uniqueness: true
    validates :password,
          length: {minimum:5}
    validates :user_type, inclusion: { in: %w(Employer Admin Jobseeker) }
end
