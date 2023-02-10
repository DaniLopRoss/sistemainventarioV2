require 'rails_helper'

RSpec.describe "solicituds/edit", type: :view do
  let(:solicitud) {
    Solicitud.create!()
  }

  before(:each) do
    assign(:solicitud, solicitud)
  end

  it "renders the edit solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicitud_path(solicitud), "post" do
    end
  end
end
