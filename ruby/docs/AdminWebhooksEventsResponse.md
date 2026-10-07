# LumoAuthApiClient::AdminWebhooksEventsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksEventsResponse.new(
  data: {&quot;user.created&quot;:&quot;Triggered when a new user is created&quot;}
)
```

