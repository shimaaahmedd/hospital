ActiveAdmin.register Doctor do
    menu priority: 2

    filter :id
    filter :name
    filter :speciality
    filter :experience
    filter :picture


    permit_params :name, :speciality, :experience, :picture
    actions :all

    index do
        column "Doctor ID", :id, sortable: true
        column "Doctor name", :name
        column "Speciality", :speciality
        column "Experience", :experience
        column "Picture", :picture 
        actions
    end

    show do
        attributes_table do
        row :id
        row :name
        row :speciality
        row :experience
        row :picture
        end
    end

    form do |f|
        f.inputs do
          f.input(:name)
          f.input(:speciality)
          f.input(:experience)
          f.input(:picture)
        end
        f.actions
      end

end