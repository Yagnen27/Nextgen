ActiveAdmin.register Order do
  permit_params :customer_id, :status, :total_price

  index do
    selectable_column
    id_column
    column :customer
    column :status
    column :total_price
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'Order Details' do
      f.input :customer, as: :select, collection: Customer.all.map { |c| [c.name, c.id] }
      f.input :status, as: :select, collection: ['Pending', 'Shipped', 'Delivered']
      f.input :total_price
    end
    f.actions
  end

  filter :customer, as: :select, collection: proc {Customer.all.map { |c| [c.name, c.id] } }
  filter :status, as: :select, collection: ['Pending', 'Shipped', 'Delivered']
  filter :total_price
  filter :created_at

  show do
    attributes_table do
      row :customer
      row :status
      row :total_price
      row :created_at
    end
  end
end
