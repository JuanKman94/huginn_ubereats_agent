# UbereatsAgent

This agent checks an establishment's Uber Eats page and checks for price
changes, allowing the user to act upon these changes as they see fit.

## Installation

This gem is run as part of the [Huginn] project. If you haven't already,
follow the [Getting Started] instructions there.

Add this string to your Huginn's .env `ADDITIONAL_GEMS` configuration:

```ruby
huginn_ubereats_agent
# when only using this agent gem it should look like this:
ADDITIONAL_GEMS=huginn_ubereats_agent
```

And then execute:

```bash
$ bundle
```

## Usage

TODO: Write usage instructions here

## Development

To run the tests, simply run `rake` and it will run the ~spec~ minitest suite.

## TODO

* [ ] Add HuginnAgent tests

## Contributing

1. [Fork it]
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[Fork it]: https://github.com/juankman94/huginn_ubereats_agent/fork
[Huginn]: https://github.com/huginn/huginn
[Getting Started]: https://github.com/huginn/huginn#getting-started
