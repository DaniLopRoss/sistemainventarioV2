require 'rails_helper'

RSpec.describe "marcas/show", type: :view do
  before(:each) do
    assign(:marca, Marca.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
