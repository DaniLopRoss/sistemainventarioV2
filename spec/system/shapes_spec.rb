require 'rails_helper'

RSpec.describe "Shapes", type: :system do
  before do
    driven_by(:rack_test)
  end

it "loads the show page with the shape name" do
  login_as(create(:usuario))
  shape= create(:shape, name: "Test Co.")

  visit shape_path(shape)

  expect(page).to have_content("Test Co.")  
  
end
end