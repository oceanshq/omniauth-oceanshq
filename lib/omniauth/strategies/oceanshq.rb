require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Oceanshq < OmniAuth::Strategies::OAuth2
      # Set the site
      option :client_options, { site: 'https://id.oceans.cloud' }

      # Always request the 'email_address' when authenticating using Omniauth.
      option :authorize_params, { scope: 'email_address' }
      option :authorize_options, [:prompt]

      # Set the UID
      uid { raw_info['identifier'].to_s }

      # Set the all the default info properties as best we can
      info do
        { 'email' => email_address }
      end

      # Provide access to the user's raw info
      extra do
        { 'raw_info' => raw_info }
      end

      # Set the callback URL
      def callback_url
        full_host + script_name + callback_path
      end

      # Return all the raw information for the user
      def raw_info
        @raw_info ||= begin
          access_token.options[:mode] = :query
          access_token.options[:param_name] = 'oauth_token'
          access_token.get('oauth/api/profile').parsed
        end
      end

      # Return the user's first e-mail address
      def email_address
        raw_info['email_addresses'] && raw_info['email_addresses'].first
      end
    end
  end
end
