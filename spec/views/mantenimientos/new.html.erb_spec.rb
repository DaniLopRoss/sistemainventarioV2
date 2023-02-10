require 'rails_helper'

RSpec.describe "mantenimientos/new", type: :view do
  before(:each) do
    assign(:mantenimiento, Mantenimiento.new())
  end

  it "renders new mantenimiento form" do
    render

    assert_select "form[action=?][method=?]", mantenimientos_path, "post" do
    end
  end
end
