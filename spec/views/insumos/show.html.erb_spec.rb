require 'rails_helper'

RSpec.describe "insumos/show", type: :view do
  before(:each) do
    assign(:insumo, Insumo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
