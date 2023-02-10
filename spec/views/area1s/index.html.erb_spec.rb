require 'rails_helper'

RSpec.describe "area1s/index", type: :view do
  before(:each) do
    assign(:area1s, [
      Area1.create!(),
      Area1.create!()
    ])
  end

  it "renders a list of area1s" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
