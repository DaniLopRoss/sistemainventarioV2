require 'rails_helper'

RSpec.describe "herramienta/show", type: :view do
  before(:each) do
    assign(:herramientum, Herramientum.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
