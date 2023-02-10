require 'rails_helper'

RSpec.describe "reportes/show", type: :view do
  before(:each) do
    assign(:reporte, Reporte.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
