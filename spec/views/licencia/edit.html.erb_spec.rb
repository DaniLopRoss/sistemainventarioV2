require 'rails_helper'

RSpec.describe "licencia/edit", type: :view do
  let(:licencium) {
    Licencium.create!()
  }

  before(:each) do
    assign(:licencium, licencium)
  end

  it "renders the edit licencium form" do
    render

    assert_select "form[action=?][method=?]", licencium_path(licencium), "post" do
    end
  end
end
