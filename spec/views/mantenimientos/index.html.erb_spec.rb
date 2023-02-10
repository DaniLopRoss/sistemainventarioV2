require 'rails_helper'

RSpec.describe "mantenimientos/index", type: :view do
  before(:each) do
    assign(:mantenimientos, [
      Mantenimiento.create!(),
      Mantenimiento.create!()
    ])
  end

  it "renders a list of mantenimientos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
