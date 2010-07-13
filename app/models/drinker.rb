class Drinker < ActiveRecord::Base
  def amount_due
    (espressos.to_i * APP_CONFIG[:espresso_price] + lungos.to_i * APP_CONFIG[:lungo_price]) / 100.0
  end
end
