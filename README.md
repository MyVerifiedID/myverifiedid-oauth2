# Myverifiedid

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'myverifiedid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install myverifiedid

## Usage
Step1 : Create on initializer

	config/initializers/omniauth.rb

	Rails.application.config.middleware.use OmniAuth::Builder do
		provider "myverifiedid" , ENV["OAUTH_ID"], ENV["OAUTH_SECRET"], :scope => "email"
	end

	These env you can get from http://api.myverifiedid.com

Step2: Add routes
	In your config/routes.rb
	
	match '/auth/:provider/callback' => 'sessions#create'
  match 'auth/failure', to: redirect('/')


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
