describe CarModel, type: :feature do
  with_authentication { users(:test) }

  let(:car_model) { car_models(:f150) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_car_model_path(car_model) }

    it 'displays the name' do
      subject
      expect(page).to have_content car_model.name
    end

    it 'displays the manufacturer' do
      subject
      expect(page).to have_content car_model.name
    end
  end

  describe 'Index page' do
    let(:path) { admin_car_models_path }

    it 'displays the name' do
      subject
      expect(page).to have_content car_model.name
    end
  end
end
