require 'rails_helper'

RSpec.describe "equipo12s/show", type: :view do
  before(:each) do
    assign(:equipo12, Equipo12.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
