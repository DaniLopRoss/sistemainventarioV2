require 'rails_helper'

RSpec.describe "solicituds/new", type: :view do
  before(:each) do
    assign(:solicitud, Solicitud.new())
  end

  it "renders new solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicituds_path, "post" do
    end
  end
end
