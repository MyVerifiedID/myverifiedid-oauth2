# Myverifiedid

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'myverifiedid', :git => "git@github.com:didiergrossemy/myverifiedid-oauth2.git"

And then execute:

    $ bundle


## Usage
Step1 : Create one initializer

	config/initializers/omniauth.rb

	Rails.application.config.middleware.use OmniAuth::Builder do
		provider "myverifiedid" , ENV["OAUTH_ID"], ENV["OAUTH_SECRET"], :scope => "email"
	end

	To get OAUTH_ID AND OAUTH_SECRET environment variables, please contact to support@myverifiedid.com
	provide following details:
	website url: 
	and you contact details or open this https://myverifiedid.com/contacts snad send your request.

Step2: Add routes
	
	In your config/routes.rb
	
	match '/auth/:provider/callback' => 'session#create'
  	match 'auth/failure', to: redirect('/')



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
