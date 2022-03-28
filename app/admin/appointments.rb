ActiveAdmin.register Appointment do
    menu priority: 1

    filter :id
    filter :user_id
    filter :doctor_id
    filter :appointment
    filter :created_at


    permit_params :user_id, :doctor_id, :appointment, :created_at
    actions :all

    index do
        column "ID", :id, sortable: true
        column "Patient ID", :user_id
        column "Patient Name" do |appointment|
            appointment.user.first_name
        end
        column "Doctor ID", :doctor_id
        column "Doctor Name" do |appointment|
            appointment.doctor.name
        end
        column "Appointment", :appointment
        column "Created at", :created_at 
        actions
    end

    show do
        attributes_table do
        row :id
        row :user_id
        row :user_name do |appointment|
            appointment.user.first_name
        end
        row :doctor_id
        row :doctor_name do |appointment|
            appointment.doctor.name
        end
        row :appointment
        row :created_at
        end
    end

    form do |f|
        f.inputs do
          f.input(:user_id)
          f.input(:doctor_id)
          f.input(:appointment)
          f.input(:created_at)
        end
        f.actions
      end

end