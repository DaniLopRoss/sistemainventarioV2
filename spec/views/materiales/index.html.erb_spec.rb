require 'rails_helper'

RSpec.describe "materiales/index", type: :view do
  before(:each) do
    assign(:materiales, [
      Materiale.create!(),
      Materiale.create!()
    ])
  end

  it "renders a list of materiales" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
