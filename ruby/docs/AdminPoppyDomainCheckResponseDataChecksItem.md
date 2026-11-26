# LumoAuthApiClient::AdminPoppyDomainCheckResponseDataChecksItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **ok** | **Boolean** |  | [optional] |
| **level** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyDomainCheckResponseDataChecksItem.new(
  id: poppy_json.domain,
  ok: null,
  level: null,
  message: null
)
```

