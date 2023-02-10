require 'rails_helper'

RSpec.describe "departamento1s/new", type: :view do
  before(:each) do
    assign(:departamento1, Departamento1.new())
  end

  it "renders new departamento1 form" do
    render

    assert_select "form[action=?][method=?]", departamento1s_path, "post" do
    end
  end
end
