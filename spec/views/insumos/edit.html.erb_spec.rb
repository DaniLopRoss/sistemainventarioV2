require 'rails_helper'

RSpec.describe "insumos/edit", type: :view do
  let(:insumo) {
    Insumo.create!()
  }

  before(:each) do
    assign(:insumo, insumo)
  end

  it "renders the edit insumo form" do
    render

    assert_select "form[action=?][method=?]", insumo_path(insumo), "post" do
    end
  end
end
