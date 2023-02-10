require 'rails_helper'

RSpec.describe "equipo12s/new", type: :view do
  before(:each) do
    assign(:equipo12, Equipo12.new())
  end

  it "renders new equipo12 form" do
    render

    assert_select "form[action=?][method=?]", equipo12s_path, "post" do
    end
  end
end
