require 'rails_helper'

RSpec.describe "departamentos/index", type: :view do
  before(:each) do
    assign(:departamentos, [
      Departamento.create!(),
      Departamento.create!()
    ])
  end

  it "renders a list of departamentos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
