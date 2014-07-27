# RSpec::EveryItem

Evaluate matcher in each array element

This is inspired by Junit [everyItem](http://junit.sourceforge.net/javadoc/org/junit/matchers/JUnitMatchers.html#everyItem(org.hamcrest.Matcher))

[![Build Status](https://travis-ci.org/sue445/rspec-every_item.svg)](https://travis-ci.org/sue445/rspec-every_item)
[![Code Climate](https://codeclimate.com/github/sue445/rspec-temp_dir.png)](https://codeclimate.com/github/sue445/rspec-temp_dir)
[![Coverage Status](https://img.shields.io/coveralls/sue445/rspec-every_item.svg)](https://coveralls.io/r/sue445/rspec-every_item)
[![Dependency Status](https://gemnasium.com/sue445/rspec-every_item.svg)](https://gemnasium.com/sue445/rspec-every_item)

## Requirements

* ruby 1.9.3, 2.x
* rspec 2.x, 3.0.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-every_item'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-every_item

## Usage

```ruby
require "rspec/every_item"

describe "All elements" do
  it "should start with 'cure_'" do
    names = %w(
      cure_happy
      cure_sunny
      cure_peace
      cure_march
      cure_beauty
    )

    expect(names).to every_item( start_with("cure_") )
  end
end
```


## Contributing

1. Fork it ( https://github.com/sue445/rspec-every_item/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
