require 'spec_helper'

describe "lbl_colours/edit" do
  before(:each) do
    @lbl_colour = assign(:lbl_colour, stub_model(LblColour,
      :name => "MyString"
    ))
  end

  it "renders the edit lbl_colour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lbl_colour_path(@lbl_colour), "post" do
      assert_select "input#lbl_colour_name[name=?]", "lbl_colour[name]"
    end
  end
end
