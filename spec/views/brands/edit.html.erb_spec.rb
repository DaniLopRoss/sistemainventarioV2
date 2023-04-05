require 'rails_helper'

RSpec.describe "brands/edit", type: :view do
  let(:brand) {
    Brand.create!()
  }

  before(:each) do
    assign(:brand, brand)
  end

  it "renders the edit brand form" do
    render

    assert_select "form[action=?][method=?]", brand_path(brand), "post" do
    end
  end
end
