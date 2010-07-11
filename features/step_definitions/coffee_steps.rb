Given /^espressos cost (\d+) cents and lungos cost (\d+) cents$/ do |espresso_price, lungo_price|
  APP_CONFIG = {} if !defined?(APP_CONFIG)
  APP_CONFIG[:espresso_price] = espresso_price
  APP_CONFIG[:lungo_price]    = lungo_price
end
