json.extract! appointment, :id, :user_id, :doctor_id, :appointment, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
