require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LblColoursController do

  # This should return the minimal set of attributes required to create a valid
  # LblColour. As you add validations to LblColour, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LblColoursController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all lbl_colours as @lbl_colours" do
      lbl_colour = LblColour.create! valid_attributes
      get :index, {}, valid_session
      assigns(:lbl_colours).should eq([lbl_colour])
    end
  end

  describe "GET show" do
    it "assigns the requested lbl_colour as @lbl_colour" do
      lbl_colour = LblColour.create! valid_attributes
      get :show, {:id => lbl_colour.to_param}, valid_session
      assigns(:lbl_colour).should eq(lbl_colour)
    end
  end

  describe "GET new" do
    it "assigns a new lbl_colour as @lbl_colour" do
      get :new, {}, valid_session
      assigns(:lbl_colour).should be_a_new(LblColour)
    end
  end

  describe "GET edit" do
    it "assigns the requested lbl_colour as @lbl_colour" do
      lbl_colour = LblColour.create! valid_attributes
      get :edit, {:id => lbl_colour.to_param}, valid_session
      assigns(:lbl_colour).should eq(lbl_colour)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LblColour" do
        expect {
          post :create, {:lbl_colour => valid_attributes}, valid_session
        }.to change(LblColour, :count).by(1)
      end

      it "assigns a newly created lbl_colour as @lbl_colour" do
        post :create, {:lbl_colour => valid_attributes}, valid_session
        assigns(:lbl_colour).should be_a(LblColour)
        assigns(:lbl_colour).should be_persisted
      end

      it "redirects to the created lbl_colour" do
        post :create, {:lbl_colour => valid_attributes}, valid_session
        response.should redirect_to(LblColour.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved lbl_colour as @lbl_colour" do
        # Trigger the behavior that occurs when invalid params are submitted
        LblColour.any_instance.stub(:save).and_return(false)
        post :create, {:lbl_colour => { "name" => "invalid value" }}, valid_session
        assigns(:lbl_colour).should be_a_new(LblColour)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LblColour.any_instance.stub(:save).and_return(false)
        post :create, {:lbl_colour => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested lbl_colour" do
        lbl_colour = LblColour.create! valid_attributes
        # Assuming there are no other lbl_colours in the database, this
        # specifies that the LblColour created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LblColour.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => lbl_colour.to_param, :lbl_colour => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested lbl_colour as @lbl_colour" do
        lbl_colour = LblColour.create! valid_attributes
        put :update, {:id => lbl_colour.to_param, :lbl_colour => valid_attributes}, valid_session
        assigns(:lbl_colour).should eq(lbl_colour)
      end

      it "redirects to the lbl_colour" do
        lbl_colour = LblColour.create! valid_attributes
        put :update, {:id => lbl_colour.to_param, :lbl_colour => valid_attributes}, valid_session
        response.should redirect_to(lbl_colour)
      end
    end

    describe "with invalid params" do
      it "assigns the lbl_colour as @lbl_colour" do
        lbl_colour = LblColour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LblColour.any_instance.stub(:save).and_return(false)
        put :update, {:id => lbl_colour.to_param, :lbl_colour => { "name" => "invalid value" }}, valid_session
        assigns(:lbl_colour).should eq(lbl_colour)
      end

      it "re-renders the 'edit' template" do
        lbl_colour = LblColour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LblColour.any_instance.stub(:save).and_return(false)
        put :update, {:id => lbl_colour.to_param, :lbl_colour => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested lbl_colour" do
      lbl_colour = LblColour.create! valid_attributes
      expect {
        delete :destroy, {:id => lbl_colour.to_param}, valid_session
      }.to change(LblColour, :count).by(-1)
    end

    it "redirects to the lbl_colours list" do
      lbl_colour = LblColour.create! valid_attributes
      delete :destroy, {:id => lbl_colour.to_param}, valid_session
      response.should redirect_to(lbl_colours_url)
    end
  end

end
