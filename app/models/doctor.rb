class Doctor < ApplicationRecord
    has_many :appointments
    validates :name, :speciality, :experience,  presence: true
end
