require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :view do
  it 'displays the correct content' do
    render

    expect(rendered).to have_selector('h1', text: 'SMART BUDGET')
    expect(rendered).to have_selector('a', text: 'Get Start')
    expect(rendered).to have_selector('a', text: 'Sign out')
  end
end
