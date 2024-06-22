ActiveAdmin.register Employee do
    permit_params :name, :department, :address, :salary, :email, :password

    index do
        selectable_column
        id_column
        column :name
        column :department
        column :address
        column :salary
        column :email
        actions
    end

    form do |f|
        f.inputs "Employee Details" do
            f.input :name
            f.input :department
            f.input :address
            f.input :salary
            f.input :email
            f.input :password
        end
        f.actions
    end

    filter :name
    filter :department
    filter :address
    filter :salary
    filter :email

    show do 
        attributes_table do
            row :id
            row :name
            row :department
            row :address
            row :salary
            row :email
            row :created_at
            row :updated_at
        end
        active_admin_comments
    end
end