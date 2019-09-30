class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
end
