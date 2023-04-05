require 'rails_helper'
RSpec.describe 'Creating a shape', type: :feature do
  scenario 'valid inputs' do
    save_and_open_page 
    visit "shapes/new"
    fill_in  'name', with: 'shape'
    click_on 'Guardar'
    assert_text "Shape was successfully created"
  end
end






#RAILS_ENV=test rake db:mrigate
#rspec
#rspec ./spec/features/equipos_spec.rb

 




#RAILS_ENV=test rake db:mrigate
#rspec
#rspec ./spec/features/equipos_spec.rb