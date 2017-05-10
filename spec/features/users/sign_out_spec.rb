feature 'Sign out', :devise do
  let(:user) { users(:test) }
  let(:password) { 'password' }

  scenario 'user signs out successfully' do
    signin(user.email, password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
    click_link 'Sign out'
    expect(page).to have_content I18n.t 'devise.sessions.signed_out'
  end
end
