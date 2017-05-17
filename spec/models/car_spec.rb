describe Car, type: :model do
  subject { cars(:red_f150) }

  it { should be_valid }
  it { should respond_to(:manufacturer) }
  it { should respond_to(:car_model) }
  it { should respond_to(:color) }
  it { should respond_to(:vin) }
  it { should respond_to(:mileage) }
  it { should respond_to(:year) }

  it 'requires vin to be valid' do
    subject.vin = nil
    expect(subject).to_not be_valid
  end

  it 'requires car_model to be valid' do
    subject.car_model = nil
    expect(subject).to_not be_valid
  end

  it 'requires year to be valid' do
    subject.year = nil
    expect(subject).to_not be_valid
  end

  it 'require year to be four digits' do
    subject.year = 200
    expect(subject).to_not be_valid
  end
end
