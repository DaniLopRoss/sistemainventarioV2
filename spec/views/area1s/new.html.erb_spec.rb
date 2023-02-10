require 'rails_helper'

RSpec.describe "area1s/new", type: :view do
  before(:each) do
    assign(:area1, Area1.new())
  end

  it "renders new area1 form" do
    render

    assert_select "form[action=?][method=?]", area1s_path, "post" do
    end
  end
end
