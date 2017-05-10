feature 'Sign in', :devise do
  context 'not registered' do
    scenario 'user cannot sign in' do
      signin('notfound@example.com', 'please123')
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end
  end

  context 'registered' do
    let(:user) { users(:test) }
    let(:password) { 'password' }

    scenario 'user can sign in with valid credentials' do
      signin(user.email, password)
      expect(page).to have_content I18n.t 'devise.sessions.signed_in'
    end

    scenario 'user cannot sign in with wrong email' do
      signin('invalid@email.com', password)
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end

    scenario 'user cannot sign in with wrong password' do
      signin(user.email, 'invalidpass')
      expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'Email'
    end
  end
end
