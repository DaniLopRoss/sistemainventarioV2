require 'rails_helper'

RSpec.describe "tipos/show", type: :view do
  before(:each) do
    assign(:tipo, Tipo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
