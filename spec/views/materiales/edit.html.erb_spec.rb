require 'rails_helper'

RSpec.describe "materiales/edit", type: :view do
  let(:materiale) {
    Materiale.create!()
  }

  before(:each) do
    assign(:materiale, materiale)
  end

  it "renders the edit materiale form" do
    render

    assert_select "form[action=?][method=?]", materiale_path(materiale), "post" do
    end
  end
end
