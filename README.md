[![Version][rubygems_badge]][rubygems]
[![CI][ci_badge]][ci]
[![License][license_badge]][license]


# importmap-package-manager

`importmap-package-manager` adds package version management to [importmap-rails](https://github.com/rails/importmap-rails) via version ranges, similar to how version ranges can be specified in `Gemfile` (eg `~> 4.0`).

This is for managing third-party libraries. For your own first-party code, that will still be managed in the normal ways via `importmap-rails`.

## Installation

First, you'll need to have [importmap-rails](https://github.com/rails/importmap-rails) set up and configured properly for your application.

Once that's done, add this line to your application's Gemfile:

```ruby
gem "importmap-package-manager"
```

And then execute:

    $ bundle install

Finally, run this gem's installer:

    $ bundle exec rails importmap_package_manager:install

## Usage

1. Add packages to `config/importmap_packages.yml` under the `imports` key. See [#package-options] for more details. You'll also want to delete these from `config/importmap.rb`.
2. Run `bundle exec rails importmap_package_manager:update` to update `config/importmap-packages-lock.rb`
3. That's it! From here, your packages will automatically be available in the importmap and ready to be used.

### Package options

Each import should be specified as a key/value pair. In the most simple case, the key is the package name and the value is the version constraint. For example:

```yml
imports:
  lodash: "~> 4.0"
```

In this case, `importmap-package-manager` will install the latest 4.0 version of lodash.

Packages can also be broken out into more detail, to provide more options:

```yml
imports:
  lodash/merge:
    package: "lodash"
    version: "~> 4.0.0"
    subpath: "./merge"
```

This would produce something like the following in your importmap: `{ "lodash/merge": "https://ga.jspm.io/npm:lodash@4.17.21/merge.js" }`

In this case, the key is just a unique identifier. It isn't used at all.

The options that can be passed for each import are:

| Option | Description |
| ------ | ----------- |
| package | Package name, as listed in npmjs.com |
| version | Version number constraint, using [ruby syntax](https://guides.rubygems.org/patterns/#pessimistic-version-constraint) |
| subpath | A subpath within the package to pin. This will be used in both the import name, and the path. |

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec` to run the tests.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/quimbee/importmap-package-manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/quimbee/importmap-package-manager/blob/master/CODE_OF_CONDUCT.md).


## License

importmap-package-manager is released under the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Importmap::Version::Manager project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/quimbee/importmap-package-manager/blob/master/CODE_OF_CONDUCT.md).

[rubygems_badge]: https://badgen.net/rubygems/v/importmap-package-manager
[rubygems]: https://rubygems.org/gems/importmap-package-manager
[ci_badge]: https://badgen.net/circleci/github/Quimbee/importmap-package-manager/main
[ci]: https://app.circleci.com/pipelines/github/Quimbee/importmap-package-manager?branch=main
[license_badge]: https://badgen.net/static/license/MIT/blue
[license]: LICENSE
