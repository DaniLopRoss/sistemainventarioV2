require 'rails_helper'

RSpec.describe "insumos/new", type: :view do
  before(:each) do
    assign(:insumo, Insumo.new())
  end

  it "renders new insumo form" do
    render

    assert_select "form[action=?][method=?]", insumos_path, "post" do
    end
  end
end
