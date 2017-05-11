shared_context 'with_authentication' do |proc|
  before do
    user = instance_eval(&proc)

    if respond_to? :sign_in
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in user
    else
      login_as user, scope: :user

      visit admin_root_path
    end
  end
end

def with_authentication(&block)
  include_context 'with_authentication', block
end
