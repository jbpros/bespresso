Given /^espressos cost (\d+) cents and lungos cost (\d+) cents$/ do |espresso_price, lungo_price|
  APP_CONFIG = {} if !defined?(APP_CONFIG)
  APP_CONFIG[:espresso_price] = espresso_price.to_i
  APP_CONFIG[:lungo_price]    = lungo_price.to_i
end

Given /^the following people drank those coffees:$/ do |table|
  table.hashes.each do |attributes|
    attributes = {
      :name      => attributes["Drinker"],
      :espressos => attributes["Espressos"],
      :lungos    => attributes["Lungos"]
    }
    drinker = Factory(:drinker, attributes)
    drinker.should_not be_new_record
  end
end

Then /^I should see that (\w{2,3}) owes (\d+\.\d+|nothing)$/ do |drinker_name, amount_due|
  drinker          = Drinker.find_by_name drinker_name
  drinker_selector = "tr#drinker-#{drinker.id}"
  steps %Q{
    Then I should see "#{drinker_name}" within "#{drinker_selector}"
    And I should see "#{amount_due == "nothing" ? 0 : amount_due}" within "#{drinker_selector}"
  }
end
