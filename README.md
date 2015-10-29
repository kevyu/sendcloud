# Sendcloud

Ruby client for sohu sendcloud api

## Installation

Add this line to your application's Gemfile:

    gem 'sendcloud'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sendcloud

## Usage

#### Configure

```ruby

Sendcloud.setup do |config|
  config.api_user = 'your api user'
  config.api_key = 'your api key'
end

```

#### Call the api

```ruby

Sendcloud::Mail.send(to: 'test@example.com', from: 'test@example.com', subject: 'test', html: 'test')

```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
