module RSpec
  module EveryItem
    module MethodSyntax
      RSpec::Matchers.define :every_item do |expected_matcher|
        match do |actual_array|
          actual_array.each do |actual|
            return false unless expected_matcher.matches?(actual)
          end
          true
        end
      end
    end
  end
end
