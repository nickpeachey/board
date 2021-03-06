require 'spec_helper'

describe "columns/index" do
  before(:each) do
    assign(:columns, [
      stub_model(Column,
        :title => "Title",
        :position => 1
      ),
      stub_model(Column,
        :title => "Title",
        :position => 1
      )
    ])
  end

  it "renders a list of columns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
