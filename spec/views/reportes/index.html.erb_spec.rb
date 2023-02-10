require 'rails_helper'

RSpec.describe "reportes/index", type: :view do
  before(:each) do
    assign(:reportes, [
      Reporte.create!(),
      Reporte.create!()
    ])
  end

  it "renders a list of reportes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
