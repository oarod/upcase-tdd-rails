require 'rails_helper'

feature 'User marks to do incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo 'First todo'

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo 'First todo'
    expect(page).to display_todo 'First todo'
  end
end
