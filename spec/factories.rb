require 'faker'
require 'factory_girl/syntax/sham'

Sham.letter   { "#{("A".."Z").to_a[rand(27)]}" }
Sham.initials { "#{Sham.letter}#{Sham.letter}"}

Factory.define :drinker do |drinker|
  drinker.name      { Sham.initials }
  drinker.espressos { rand(100) }
  drinker.lungos    { rand(100) }
end
