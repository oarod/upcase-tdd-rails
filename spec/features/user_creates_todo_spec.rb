require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'First todo'

    expect(page).to display_todo 'First todo'
  end
end
