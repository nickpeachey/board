require 'spec_helper'

describe "LblColours" do
  describe "GET /lbl_colours" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lbl_colours_path
      response.status.should be(200)
    end
  end
end
