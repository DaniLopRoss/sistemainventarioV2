require 'rails_helper'

RSpec.describe "herramienta/edit", type: :view do
  let(:herramientum) {
    Herramientum.create!()
  }

  before(:each) do
    assign(:herramientum, herramientum)
  end

  it "renders the edit herramientum form" do
    render

    assert_select "form[action=?][method=?]", herramientum_path(herramientum), "post" do
    end
  end
end
