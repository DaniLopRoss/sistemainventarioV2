require 'rails_helper'

RSpec.describe "area1s/edit", type: :view do
  let(:area1) {
    Area1.create!()
  }

  before(:each) do
    assign(:area1, area1)
  end

  it "renders the edit area1 form" do
    render

    assert_select "form[action=?][method=?]", area1_path(area1), "post" do
    end
  end
end
