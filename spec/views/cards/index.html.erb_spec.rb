require 'spec_helper'

describe "cards/index" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
        :lblColour_id => 1,
        :title => "Title",
        :position => 2,
        :sprint_board_id => 3
      ),
      stub_model(Card,
        :lblColour_id => 1,
        :title => "Title",
        :position => 2,
        :sprint_board_id => 3
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
