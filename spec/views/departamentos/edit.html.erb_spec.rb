require 'rails_helper'

RSpec.describe "departamentos/edit", type: :view do
  let(:departamento) {
    Departamento.create!()
  }

  before(:each) do
    assign(:departamento, departamento)
  end

  it "renders the edit departamento form" do
    render

    assert_select "form[action=?][method=?]", departamento_path(departamento), "post" do
    end
  end
end
