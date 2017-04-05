require 'rails_helper'

RSpec.describe "lasts/index", type: :view do
  before(:each) do
    assign(:lasts, [
      Last.create!(),
      Last.create!()
    ])
  end

  it "renders a list of lasts" do
    render
  end
end
