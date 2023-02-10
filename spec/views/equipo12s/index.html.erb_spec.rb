require 'rails_helper'

RSpec.describe "equipo12s/index", type: :view do
  before(:each) do
    assign(:equipo12s, [
      Equipo12.create!(),
      Equipo12.create!()
    ])
  end

  it "renders a list of equipo12s" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
