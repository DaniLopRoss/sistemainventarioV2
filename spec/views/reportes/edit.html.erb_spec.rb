require 'rails_helper'

RSpec.describe "reportes/edit", type: :view do
  let(:reporte) {
    Reporte.create!()
  }

  before(:each) do
    assign(:reporte, reporte)
  end

  it "renders the edit reporte form" do
    render

    assert_select "form[action=?][method=?]", reporte_path(reporte), "post" do
    end
  end
end
