module RSpec
  module EveryItem
    module Matchers
      RSpec::Matchers.define :every_item do |expected_matcher|
        match do |actuals|
          actuals.all?{|actual| expected_matcher.matches?(actual) }
        end
      end
    end
  end
end
