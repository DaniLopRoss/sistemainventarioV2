require 'rails_helper'

RSpec.describe "herramienta/index", type: :view do
  before(:each) do
    assign(:herramienta, [
      Herramientum.create!(),
      Herramientum.create!()
    ])
  end

  it "renders a list of herramienta" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
