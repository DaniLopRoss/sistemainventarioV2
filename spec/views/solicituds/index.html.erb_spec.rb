require 'rails_helper'

RSpec.describe "solicituds/index", type: :view do
  before(:each) do
    assign(:solicituds, [
      Solicitud.create!(),
      Solicitud.create!()
    ])
  end

  it "renders a list of solicituds" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
