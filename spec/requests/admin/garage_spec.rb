describe Garage, type: :feature do
  with_authentication { users(:test) }

  let(:garage) { garages(:Takl_Garage) }
  let(:car1) { cars(:red_f150) }
  let(:car2) { cars(:white_miata) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_garage_path(garage) }

    it 'displays the address' do
      subject
      expect(page).to have_content garage.address
    end

    it 'displays the user id' do
      subject
      expect(page).to have_content garage.user_id
    end

    it 'displays the number of spaces' do
      subject
      expect(page).to have_content garage.spaces
    end

    it 'displays the price' do
      subject
      expect(page).to have_content garage.price
    end
  end

  describe 'Index page' do
    let(:path) { admin_garage_path(garage) }

    it 'displays the address' do
      subject
      expect(page).to have_content garage.address
    end

    it 'displays the user id' do
      subject
      expect(page).to have_content garage.user_id
    end

    it 'displays the number of spaces' do
      subject
      expect(page).to have_content garage.spaces
    end

    it 'displays the price' do
      subject
      expect(page).to have_content garage.price
    end
  end

  describe 'Garage Spaces' do
    it 'enforces garage capacity' do
      user = User.create!(email: 'user@email.com', password: '123456')
      garage = Garage.create!(address: 'Here', user_id: user.id, spaces: 1, price: 10)
      manufacturer = Manufacturer.create!(name: 'Toyota')
      model = CarModel.create!(name: 'Corolla', manufacturer: manufacturer)
      car1 = Car.create!(car_model_id: model.id, vin: 'DAF', mileage: 3, year: 2000, garage_id: garage.id)
      expect {
        Car.create!(car_model_id: model.id, vin: 'FAD', mileage: 322, year: 2005, garage_id: garage.id)
      }.to raise_error(/Exceeds garage capacity/)
    end
  end
end
