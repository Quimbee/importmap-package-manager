# importmap-version-manager

`importmap-version-manager` adds package version management to [importmap-rails](https://github.com/rails/importmap-rails) via version ranges, similar to how version ranges can be specified in `Gemfile` (eg `~> 4.0`)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'importmap-version-manager'
```

And then execute:

    $ bundle install

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec` to run the tests.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/quimbee/importmap-version-manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/quimbee/importmap-version-manager/blob/master/CODE_OF_CONDUCT.md).


## License

TBD

## Code of Conduct

Everyone interacting in the Importmap::Version::Manager project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/quimbee/importmap-version-manager/blob/master/CODE_OF_CONDUCT.md).
