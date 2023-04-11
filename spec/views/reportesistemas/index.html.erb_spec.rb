require 'rails_helper'

RSpec.describe "reportesistemas/index", type: :view do
  before(:each) do
    assign(:reportesistemas, [
      Reportesistema.create!(),
      Reportesistema.create!()
    ])
  end

  it "renders a list of reportesistemas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
