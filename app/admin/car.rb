ActiveAdmin.register Car do
  permit_params :car_model, :vin, :mileage, :color

  index do
    selectable_column
    id_column
    column :car_model
    column :vin
    column :mileage
    column :color
    column :created_at
    actions
  end

  filter :car_model
  filter :vin
  filter :mileage
  filter :color
  filter :created_at

  form do |f|
    f.inputs 'Car Details' do
      f.input :car_model
      f.input :vin
      f.input :mileage
      f.input :color
    end
    f.actions
  end
end
