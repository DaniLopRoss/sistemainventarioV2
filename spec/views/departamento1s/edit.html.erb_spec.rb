require 'rails_helper'

RSpec.describe "departamento1s/edit", type: :view do
  let(:departamento1) {
    Departamento1.create!()
  }

  before(:each) do
    assign(:departamento1, departamento1)
  end

  it "renders the edit departamento1 form" do
    render

    assert_select "form[action=?][method=?]", departamento1_path(departamento1), "post" do
    end
  end
end
