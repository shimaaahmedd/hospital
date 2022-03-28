class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    validates :appointment, presence: true

    before_save :appointment_greater_than_today_date

    def appointment_greater_than_today_date
      if appointment.to_time.to_i < Date.today.to_time.to_i
        errors.add(:appointment, "can't be in the past")
      end
    end
end
