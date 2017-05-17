describe User do
  subject { users(:test) }

  it { should be_valid }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:monthly_rent) }
end
