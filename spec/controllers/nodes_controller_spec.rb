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

describe NodesController do

  # This should return the minimal set of attributes required to create a valid
  # Node. As you add validations to Node, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NodesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all nodes as @nodes" do
      node = Node.create! valid_attributes
      get :index, {}, valid_session
      assigns(:nodes).should eq([node])
    end
  end

  describe "GET show" do
    it "assigns the requested node as @node" do
      node = Node.create! valid_attributes
      get :show, {:id => node.to_param}, valid_session
      assigns(:node).should eq(node)
    end
  end

  describe "GET new" do
    it "assigns a new node as @node" do
      get :new, {}, valid_session
      assigns(:node).should be_a_new(Node)
    end
  end

  describe "GET edit" do
    it "assigns the requested node as @node" do
      node = Node.create! valid_attributes
      get :edit, {:id => node.to_param}, valid_session
      assigns(:node).should eq(node)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Node" do
        expect {
          post :create, {:node => valid_attributes}, valid_session
        }.to change(Node, :count).by(1)
      end

      it "assigns a newly created node as @node" do
        post :create, {:node => valid_attributes}, valid_session
        assigns(:node).should be_a(Node)
        assigns(:node).should be_persisted
      end

      it "redirects to the created node" do
        post :create, {:node => valid_attributes}, valid_session
        response.should redirect_to(Node.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved node as @node" do
        # Trigger the behavior that occurs when invalid params are submitted
        Node.any_instance.stub(:save).and_return(false)
        post :create, {:node => { "title" => "invalid value" }}, valid_session
        assigns(:node).should be_a_new(Node)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Node.any_instance.stub(:save).and_return(false)
        post :create, {:node => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested node" do
        node = Node.create! valid_attributes
        # Assuming there are no other nodes in the database, this
        # specifies that the Node created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Node.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => node.to_param, :node => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested node as @node" do
        node = Node.create! valid_attributes
        put :update, {:id => node.to_param, :node => valid_attributes}, valid_session
        assigns(:node).should eq(node)
      end

      it "redirects to the node" do
        node = Node.create! valid_attributes
        put :update, {:id => node.to_param, :node => valid_attributes}, valid_session
        response.should redirect_to(node)
      end
    end

    describe "with invalid params" do
      it "assigns the node as @node" do
        node = Node.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Node.any_instance.stub(:save).and_return(false)
        put :update, {:id => node.to_param, :node => { "title" => "invalid value" }}, valid_session
        assigns(:node).should eq(node)
      end

      it "re-renders the 'edit' template" do
        node = Node.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Node.any_instance.stub(:save).and_return(false)
        put :update, {:id => node.to_param, :node => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested node" do
      node = Node.create! valid_attributes
      expect {
        delete :destroy, {:id => node.to_param}, valid_session
      }.to change(Node, :count).by(-1)
    end

    it "redirects to the nodes list" do
      node = Node.create! valid_attributes
      delete :destroy, {:id => node.to_param}, valid_session
      response.should redirect_to(nodes_url)
    end
  end

end
