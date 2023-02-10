require 'rails_helper'

RSpec.describe "materiales/new", type: :view do
  before(:each) do
    assign(:materiale, Materiale.new())
  end

  it "renders new materiale form" do
    render

    assert_select "form[action=?][method=?]", materiales_path, "post" do
    end
  end
end
