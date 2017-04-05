require 'rails_helper'

RSpec.describe "firsts/edit", type: :view do
  before(:each) do
    @first = assign(:first, First.create!())
  end

  it "renders the edit first form" do
    render

    assert_select "form[action=?][method=?]", first_path(@first), "post" do
    end
  end
end
