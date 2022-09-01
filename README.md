# Omniauth Strategy for OceansHQ

This Omniauth strategy is for authenticating using the OceansHQ authentication system. 

You can create an OAuth application from within the identity website at

Once you have created this, you can define your Omniauth strategy.

```ruby
use OmniAuth::Builder do
  provider :oceanshq, ENV['OCEANSHQ_CLIENT_ID'], ENV['OCEANSHQ_CLIENT_SECRET']
end
```
