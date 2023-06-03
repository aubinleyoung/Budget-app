require 'rails_helper'

RSpec.describe 'pages/splash.html.erb', type: :view do
  it 'displays the correct page title' do
    render
    expect(rendered).to have_title('Splash')
  end

  it 'displays the correct header' do
    render
    expect(rendered).to have_selector('h3', text: 'SMART BUDGET')
  end

  it 'displays the correct sign up button' do
    render
    expect(rendered).to have_link('Sign up', href: new_user_registration_path)
  end

  it 'displays the correct log in button' do
    render
    expect(rendered).to have_link('Log in', href: new_user_session_path)
  end
end
