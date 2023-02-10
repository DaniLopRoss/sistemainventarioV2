require 'rails_helper'

RSpec.describe "areas/edit", type: :view do
  let(:area) {
    Area.create!()
  }

  before(:each) do
    assign(:area, area)
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(area), "post" do
    end
  end
end
