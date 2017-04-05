require 'rails_helper'

RSpec.describe "firsts/new", type: :view do
  before(:each) do
    assign(:first, First.new())
  end

  it "renders new first form" do
    render

    assert_select "form[action=?][method=?]", firsts_path, "post" do
    end
  end
end
