require 'rails_helper'

RSpec.describe "solicituds/show", type: :view do
  before(:each) do
    assign(:solicitud, Solicitud.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
