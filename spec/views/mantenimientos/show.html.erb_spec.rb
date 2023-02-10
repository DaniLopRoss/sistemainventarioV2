require 'rails_helper'

RSpec.describe "mantenimientos/show", type: :view do
  before(:each) do
    assign(:mantenimiento, Mantenimiento.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
