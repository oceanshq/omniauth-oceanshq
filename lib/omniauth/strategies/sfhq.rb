require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Sfhq < Oceanshq
      # Request access to the sfhq API
      option :authorize_params, { scope: 'sfhq' }
    end
  end
end
