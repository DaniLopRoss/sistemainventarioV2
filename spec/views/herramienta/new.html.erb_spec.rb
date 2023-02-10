require 'rails_helper'

RSpec.describe "herramienta/new", type: :view do
  before(:each) do
    assign(:herramientum, Herramientum.new())
  end

  it "renders new herramientum form" do
    render

    assert_select "form[action=?][method=?]", herramienta_path, "post" do
    end
  end
end
