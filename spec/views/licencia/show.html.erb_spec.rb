require 'rails_helper'

RSpec.describe "licencia/show", type: :view do
  before(:each) do
    assign(:licencium, Licencium.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
