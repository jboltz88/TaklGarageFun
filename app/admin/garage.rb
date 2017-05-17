ActiveAdmin.register Garage do
  permit_params :address, :user_id, :spaces, :price

  index do
    selectable_column
    id_column
    column :address
    column :user_id
    column :spaces
    column :price
    column :created_at
    actions
  end

  filter :address
  filter :user_id
  filter :spaces
  filter :price
  filter :created_at

  form do |f|
    f.inputs 'Car Details' do
      f.input :address
      f.input :user_id
      f.input :spaces
      f.input :price
    end
    f.actions
  end
end
