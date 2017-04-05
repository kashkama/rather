require 'rails_helper'

RSpec.describe "lasts/show", type: :view do
  before(:each) do
    @last = assign(:last, Last.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
