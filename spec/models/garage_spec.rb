describe Garage, type: :model do
  subject { garages(:Takl_Garage) }

  it { should be_valid }
  it { should respond_to(:address) }
  it { should respond_to(:spaces) }
  it { should respond_to(:user_id) }
  it { should respond_to(:price) }

  it 'requires address to be valid' do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  it 'requires spaces to be valid' do
    subject.spaces = nil
    expect(subject).to_not be_valid
  end

  it 'requires price to be valid' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
