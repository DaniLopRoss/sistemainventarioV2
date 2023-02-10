require 'rails_helper'

RSpec.describe "tipos/edit", type: :view do
  let(:tipo) {
    Tipo.create!()
  }

  before(:each) do
    assign(:tipo, tipo)
  end

  it "renders the edit tipo form" do
    render

    assert_select "form[action=?][method=?]", tipo_path(tipo), "post" do
    end
  end
end
