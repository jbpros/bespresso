require 'faker'
require 'factory_girl/syntax/sham'

Sham.title { Faker::Lorem.sentence }

# Sample:
Factory.define :post do |post|
  post.title
end
