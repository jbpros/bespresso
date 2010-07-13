require 'spec_helper'

describe DrinkersController do

  describe 'GET index' do
    it "renders drinkers/index" do
      get :index
      response.should render_template('drinkers/index')
    end

    it "assigns @drinkers" do
      drinkers = mock("drinker collection")
      Drinker.should_receive(:all).and_return drinkers
      get :index
      assigns(:drinkers).should eq drinkers
    end
  end

end
