require 'rails_helper'

RSpec.describe "reportesistemas/new", type: :view do
  before(:each) do
    assign(:reportesistema, Reportesistema.new())
  end

  it "renders new reportesistema form" do
    render

    assert_select "form[action=?][method=?]", reportesistemas_path, "post" do
    end
  end
end
