# LumoAuthApiClient::AdminSocialProvidersCallbackUrlsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSocialProvidersCallbackUrlsResponse.new(
  data: {&quot;google&quot;:&quot;https://auth.example.com/orgs/acme/auth/social/google/callback&quot;}
)
```

