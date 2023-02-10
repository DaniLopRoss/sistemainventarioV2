require 'rails_helper'

RSpec.describe "marcas/edit", type: :view do
  let(:marca) {
    Marca.create!()
  }

  before(:each) do
    assign(:marca, marca)
  end

  it "renders the edit marca form" do
    render

    assert_select "form[action=?][method=?]", marca_path(marca), "post" do
    end
  end
end
