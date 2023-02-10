require 'rails_helper'
RSpec.describe 'Creating a area', type: :feature do
  scenario 'valid inputs' do
    save_and_open_page 
    visit new_area_path
    fill_in 'name', with: 'area'
    click_on 'Guardar'
    assert_text "Area was successfully created"
  end
end






#RAILS_ENV=test rake db:mrigate
#rspec
#rspec ./spec/features/equipos_spec.rb