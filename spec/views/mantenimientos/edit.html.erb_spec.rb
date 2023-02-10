require 'rails_helper'

RSpec.describe "mantenimientos/edit", type: :view do
  let(:mantenimiento) {
    Mantenimiento.create!()
  }

  before(:each) do
    assign(:mantenimiento, mantenimiento)
  end

  it "renders the edit mantenimiento form" do
    render

    assert_select "form[action=?][method=?]", mantenimiento_path(mantenimiento), "post" do
    end
  end
end
