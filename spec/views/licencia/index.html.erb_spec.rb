require 'rails_helper'

RSpec.describe "licencia/index", type: :view do
  before(:each) do
    assign(:licencia, [
      Licencium.create!(),
      Licencium.create!()
    ])
  end

  it "renders a list of licencia" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
