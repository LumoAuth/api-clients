# LumoAuthApiClient::SendPoppyFeedbackRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task** | **String** |  |  |
| **description** | **String** | What the Personal Agent tried to do and why it could not, without identifiers or personal data. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SendPoppyFeedbackRequest.new(
  task: Pay with a gift card,
  description: null
)
```

