# LumoAuthApiClient::ListTrustedDevicesResponseDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **last_used_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListTrustedDevicesResponseDataItem.new(
  id: null,
  label: null,
  ip_address: null,
  created_at: null,
  expires_at: null,
  last_used_at: null
)
```

