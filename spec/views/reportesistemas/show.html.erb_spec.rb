require 'rails_helper'

RSpec.describe "reportesistemas/show", type: :view do
  before(:each) do
    assign(:reportesistema, Reportesistema.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
