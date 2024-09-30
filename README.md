# Gamefic::Grammar

English grammar rules for Gamefic entities.

## Installation

**If your project uses gamefic-standard, gamefic-grammar is already included.**

Add the library to your Gamefic project's Gemfile:

```
gem 'gamefic-grammar'
```

Run `bundle install`.

Add the requirement to your project's code (typically in `main.rb`):

```
require 'gamefic-grammar'

## Usage

An entity's `gender` attribute can be `:male`, `:female`, `:neutral`, or `:other`. Default is `:neutral`.

```ruby
woman = Gamefic::Entity.new(name: 'woman', gender: :female)
woman.subjective #=> "she"
woman.objective  #=> "her"
woman.possessive #=> "her"
woman.reflexive  #=> "herself"
```

An entity's `plural?` attribute is boolean. Default is false.

```ruby
shoes = Gamefic::Entity.new(name: 'shoes', plural: true)
shoes.plural? #=> true
"The #{shoes.name} #{shoes.maybe_plural('is', 'are')} red." #=> "The shoes are red."
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/castwide/gamefic-grammar.
