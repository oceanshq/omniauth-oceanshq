require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Lighthouse < Oceanshq
      # Request access to the lighthouse API
      option :authorize_params, { scope: 'lighthouse' }
    end
  end
end
