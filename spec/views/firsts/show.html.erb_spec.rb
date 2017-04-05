require 'rails_helper'

RSpec.describe "firsts/show", type: :view do
  before(:each) do
    @first = assign(:first, First.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
