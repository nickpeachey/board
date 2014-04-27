require 'spec_helper'

describe "lbl_colours/index" do
  before(:each) do
    assign(:lbl_colours, [
      stub_model(LblColour,
        :name => "Name"
      ),
      stub_model(LblColour,
        :name => "Name"
      )
    ])
  end

  it "renders a list of lbl_colours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
