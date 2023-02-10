require 'rails_helper'

RSpec.describe "area1s/show", type: :view do
  before(:each) do
    assign(:area1, Area1.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
