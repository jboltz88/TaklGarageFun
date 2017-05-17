ActiveAdmin.register Car do
  permit_params :car_model_id, :vin, :mileage, :color, :year

  index do
    selectable_column
    id_column
    column :car_model
    column :vin
    column :mileage
    column :color
    column :year
    column :created_at
    actions
  end

  filter :car_model
  filter :vin
  filter :mileage
  filter :color
  filter :year
  filter :created_at

  form do |f|
    f.inputs 'Car Details' do
      f.input :car_model
      f.input :vin
      f.input :mileage
      f.input :color, as: :string
      f.input :year
    end
    f.actions
  end
end
