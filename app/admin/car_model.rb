ActiveAdmin.register CarModel do
  permit_params :name, :manufacturer_id

  index do
    selectable_column
    id_column
    column :name
    column :manufacturer
    actions
  end

  filter :name
  filter :manufacturer
  filter :created_at

  form do |f|
    f.inputs 'Car Model Details' do
      f.input :name
      f.input :manufacturer
    end
    f.actions
  end
end
