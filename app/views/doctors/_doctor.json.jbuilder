json.extract! doctor, :id, :name, :speciality, :experience, :picture, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
