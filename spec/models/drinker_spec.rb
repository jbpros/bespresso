require 'spec_helper'

describe Drinker do

  it "saves when valid" do
    drinker = Factory :drinker
    drinker.save.should be_true
  end

  describe :amount_due do
    it "computes the total cost of espressos and lungos as euros" do
      APP_CONFIG[:espresso_price] = 2
      APP_CONFIG[:lungo_price]    = 1.5
      drinker = Factory(:drinker, :espressos => 20, :lungos => 10)
      drinker.amount_due.should eq ((20 * 2 + 10 * 1.5)/100.0)
    end
  end
end
