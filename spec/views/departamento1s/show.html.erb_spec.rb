require 'rails_helper'

RSpec.describe "departamento1s/show", type: :view do
  before(:each) do
    assign(:departamento1, Departamento1.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
