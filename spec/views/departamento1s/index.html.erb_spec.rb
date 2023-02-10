require 'rails_helper'

RSpec.describe "departamento1s/index", type: :view do
  before(:each) do
    assign(:departamento1s, [
      Departamento1.create!(),
      Departamento1.create!()
    ])
  end

  it "renders a list of departamento1s" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
