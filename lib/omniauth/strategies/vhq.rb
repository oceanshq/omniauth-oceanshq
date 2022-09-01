require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vhq < Oceanshq
      # Request access to the vhq API
      option :authorize_params, { scope: 'vhq' }
    end
  end
end
