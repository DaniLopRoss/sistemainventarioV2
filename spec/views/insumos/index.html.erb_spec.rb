require 'rails_helper'

RSpec.describe "insumos/index", type: :view do
  before(:each) do
    assign(:insumos, [
      Insumo.create!(),
      Insumo.create!()
    ])
  end

  it "renders a list of insumos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
