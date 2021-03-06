require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :lblColour_id => 1,
      :title => "MyString",
      :position => 1,
      :sprint_board_id => 1
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", card_path(@card), "post" do
      assert_select "input#card_lblColour_id[name=?]", "card[lblColour_id]"
      assert_select "input#card_title[name=?]", "card[title]"
      assert_select "input#card_position[name=?]", "card[position]"
      assert_select "input#card_sprint_board_id[name=?]", "card[sprint_board_id]"
    end
  end
end
