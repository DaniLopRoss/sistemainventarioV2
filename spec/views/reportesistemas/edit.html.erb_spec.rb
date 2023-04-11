require 'rails_helper'

RSpec.describe "reportesistemas/edit", type: :view do
  let(:reportesistema) {
    Reportesistema.create!()
  }

  before(:each) do
    assign(:reportesistema, reportesistema)
  end

  it "renders the edit reportesistema form" do
    render

    assert_select "form[action=?][method=?]", reportesistema_path(reportesistema), "post" do
    end
  end
end
