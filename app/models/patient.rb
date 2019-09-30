class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_secure_password

    validates :email, uniqueness: true
    validates :password_digest, presence: true
end
