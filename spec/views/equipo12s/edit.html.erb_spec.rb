require 'rails_helper'

RSpec.describe "equipo12s/edit", type: :view do
  let(:equipo12) {
    Equipo12.create!()
  }

  before(:each) do
    assign(:equipo12, equipo12)
  end

  it "renders the edit equipo12 form" do
    render

    assert_select "form[action=?][method=?]", equipo12_path(equipo12), "post" do
    end
  end
end
