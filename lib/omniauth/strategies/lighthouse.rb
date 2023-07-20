require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vhq < Lighthouse
      # Request access to the lighthouse API
      option :authorize_params, { scope: 'lighthouse' }
    end
  end
end
