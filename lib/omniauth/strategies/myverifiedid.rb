require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Myverifiedid < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name , :myverifiedid

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {:site => "https://api.myverifiedid.com",
        :authorize_path => "/oauth/authorize"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['_id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/me').parsed
      end
    end
  end
end