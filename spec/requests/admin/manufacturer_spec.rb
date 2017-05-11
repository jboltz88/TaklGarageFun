describe Manufacturer, type: :feature do
  with_authentication { users(:test) }

  let(:manufacturer) { manufacturers(:ford) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_manufacturer_path(manufacturer) }

    it 'displays the name' do
      subject
      expect(page).to have_content manufacturer.name
    end
  end

  describe 'Index page' do
    let(:path) { admin_manufacturers_path }

    it 'displays the name' do
      subject
      expect(page).to have_content manufacturer.name
    end
  end
end
