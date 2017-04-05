require 'rails_helper'

RSpec.describe "firsts/index", type: :view do
  before(:each) do
    assign(:firsts, [
      First.create!(),
      First.create!()
    ])
  end

  it "renders a list of firsts" do
    render
  end
end
