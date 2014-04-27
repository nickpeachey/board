require 'spec_helper'

describe "lbl_colours/show" do
  before(:each) do
    @lbl_colour = assign(:lbl_colour, stub_model(LblColour,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
