require 'rails_helper'

RSpec.describe "lasts/edit", type: :view do
  before(:each) do
    @last = assign(:last, Last.create!())
  end

  it "renders the edit last form" do
    render

    assert_select "form[action=?][method=?]", last_path(@last), "post" do
    end
  end
end
