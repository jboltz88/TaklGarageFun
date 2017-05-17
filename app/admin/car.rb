ActiveAdmin.register Car do
  permit_params :car_model_id, :manufacturer_id, :vin, :mileage, :color, :year, :user_id

  show do
    attributes_table :car_model, :manufacturer, :vin, :mileage, :color, :year, :user_id, :created_at, :updated_at
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :car_model
    column :manufacturer
    column :vin
    column :mileage
    column :color
    column :year
    column :user_id
    column :created_at
    actions
  end

  filter :car_model
  filter :manufacturer
  filter :vin
  filter :mileage
  filter :color
  filter :year
  filter :user_id
  filter :created_at

  form do |f|
    f.inputs 'Car Details' do
      f.input :car_model
      f.input :vin
      f.input :mileage
      f.input :color, as: :string
      f.input :year
      f.input :user_id
    end
    f.actions
  end
end
