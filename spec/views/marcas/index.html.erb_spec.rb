require 'rails_helper'

RSpec.describe "marcas/index", type: :view do
  before(:each) do
    assign(:marcas, [
      Marca.create!(),
      Marca.create!()
    ])
  end

  it "renders a list of marcas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
