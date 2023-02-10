require 'rails_helper'

RSpec.describe "marcas/new", type: :view do
  before(:each) do
    assign(:marca, Marca.new())
  end

  it "renders new marca form" do
    render

    assert_select "form[action=?][method=?]", marcas_path, "post" do
    end
  end
end
