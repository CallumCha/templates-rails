require 'rails_helper'

RSpec.describe 'Dummy functionality', type: :feature do
  it 'works correctly' do
    visit '/'
    click_link 'Go to Templates'

    expect(page).to have_content 'Templates'
  end

  it 'opens a nested template whose name contains a hash' do
    visit '/templates'
    click_link 'Folder Example'
    click_link 'Examples#Show'

    expect(page).to have_css('#example-4')
  end
end
