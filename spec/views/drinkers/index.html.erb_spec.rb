require 'spec_helper'

describe "drinkers/index" do

  let(:drinkers_attributes) { Array.new(3) { Factory.attributes_for(:drinker).merge(:amount_due => rand(10000)) } }
  let(:drinkers)            { Array.new(3) { |i| mock_model(Drinker, drinkers_attributes[i]) } }

  before :each do
    assign(:drinkers, drinkers)
  end

  it "shows everyone's name" do
    drinkers.each do |drinker|
      drinker.should_receive(:name)
    end
    render
    drinkers.each_with_index do |drinker, i|
      rendered.should contain(drinkers_attributes[i][:name])
    end
  end

  it "shows everyone's espresso and lungo count" do
    drinkers.each do |drinker|
      drinker.should_receive(:espressos)
      drinker.should_receive(:lungos)
    end
    render
    drinkers.each_with_index do |drinker, i|
      rendered.should contain(drinkers_attributes[i][:espressos].to_s)
      rendered.should contain(drinkers_attributes[i][:lungos].to_s)
    end
  end

  it "shows everyone's due amount" do
    drinkers.each do |drinker|
      drinker.should_receive(:amount_due)
    end
    render
    drinkers.each_with_index do |drinker, i|
      rendered.should contain(drinkers_attributes[i][:amount_due].to_s)
    end
  end
end
