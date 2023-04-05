require 'capybara/dsl'
require 'rails_helper'
RSpec.describe 'Creating a post', type: :feature do
  scenario 'valid inputs' do
    #save_and_open_page 
    visit "posts/new"
    fill_in  'post[access]', with: 'shape1'
    fill_in  'post[passcode]', with: 'shape1'
    fill_in  'post[body]', with: 'shape1'
   
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