describe Car, type: :feature do
  with_authentication { users(:test) }

  let(:garage) { garages(:Takl_Garage) }
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
end
