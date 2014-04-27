require 'spec_helper'

describe "lbl_colours/new" do
  before(:each) do
    assign(:lbl_colour, stub_model(LblColour,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new lbl_colour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lbl_colours_path, "post" do
      assert_select "input#lbl_colour_name[name=?]", "lbl_colour[name]"
    end
  end
end
