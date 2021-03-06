require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'First todo'

    click_on 'Mark complete'

    expect(page).to display_completed_todo 'First todo'
  end
end
