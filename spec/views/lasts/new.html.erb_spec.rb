require 'rails_helper'

RSpec.describe "lasts/new", type: :view do
  before(:each) do
    assign(:last, Last.new())
  end

  it "renders new last form" do
    render

    assert_select "form[action=?][method=?]", lasts_path, "post" do
    end
  end
end
