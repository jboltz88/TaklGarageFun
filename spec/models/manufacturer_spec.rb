describe Manufacturer, type: :model do
  subject { manufacturers(:ford) }

  it { should be_valid }
  it { should respond_to(:name) }

  it 'requires name to be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
