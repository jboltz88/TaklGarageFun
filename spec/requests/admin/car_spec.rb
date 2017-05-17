describe Car, type: :feature do
  with_authentication { users(:test) }

  let(:car) { cars(:red_f150) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_car_path(car) }

    it 'displays the car model name' do
      subject
      expect(page).to have_content car.car_model.name
    end

    it 'displays the car manufacturer' do
      subject
      expect(page).to have_content car.manufacturer.name
    end

    it 'displays the vin' do
      subject
      expect(page).to have_content car.vin
    end

    it 'displays the mileage' do
      subject
      expect(page).to have_content car.mileage
    end

    it 'displays the color' do
      subject
      expect(page).to have_content car.color
    end

    it 'displays the year' do
      subject
      expect(page).to have_content car.year
    end

    it 'displays user id' do
      subject
      expect(page).to have_content car.user_id
    end
  end

  describe 'Index page' do
    let(:path) { admin_cars_path }

    it 'displays the car model name' do
      subject
      expect(page).to have_content car.car_model.name
    end

    it 'displays the car manufacturer' do
      subject
      expect(page).to have_content car.manufacturer.name
    end

    it 'displays the vin' do
      subject
      expect(page).to have_content car.vin
    end

    it 'displays the mileage' do
      subject
      expect(page).to have_content car.mileage
    end

    it 'displays the color' do
      subject
      expect(page).to have_content car.color
    end

    it 'displays the year' do
      subject
      expect(page).to have_content car.year
    end

    it 'displays user id' do
      subject
      expect(page).to have_content car.user_id
    end
  end
end
