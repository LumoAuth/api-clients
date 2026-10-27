# LumoAuthApiClient::McpServerToolAuthorizeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | [**McpServerToolAuthorizeRequestSubject**](McpServerToolAuthorizeRequestSubject.md) |  |  |
| **tool** | **String** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::McpServerToolAuthorizeRequest.new(
  subject: null,
  tool: send_payment_reminder
)
```

