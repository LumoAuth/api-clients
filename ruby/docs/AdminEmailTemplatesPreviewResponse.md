# LumoAuthApiClient::AdminEmailTemplatesPreviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **html** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminEmailTemplatesPreviewResponse.new(
  type: password_reset,
  subject: null,
  html: null
)
```

