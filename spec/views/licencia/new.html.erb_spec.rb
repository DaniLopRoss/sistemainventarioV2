require 'rails_helper'

RSpec.describe "licencia/new", type: :view do
  before(:each) do
    assign(:licencium, Licencium.new())
  end

  it "renders new licencium form" do
    render

    assert_select "form[action=?][method=?]", licencia_path, "post" do
    end
  end
end
