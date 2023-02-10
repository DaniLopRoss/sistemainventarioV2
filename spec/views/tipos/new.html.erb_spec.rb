require 'rails_helper'

RSpec.describe "tipos/new", type: :view do
  before(:each) do
    assign(:tipo, Tipo.new())
  end

  it "renders new tipo form" do
    render

    assert_select "form[action=?][method=?]", tipos_path, "post" do
    end
  end
end
