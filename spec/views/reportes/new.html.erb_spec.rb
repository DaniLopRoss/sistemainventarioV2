require 'rails_helper'

RSpec.describe "reportes/new", type: :view do
  before(:each) do
    assign(:reporte, Reporte.new())
  end

  it "renders new reporte form" do
    render

    assert_select "form[action=?][method=?]", reportes_path, "post" do
    end
  end
end
