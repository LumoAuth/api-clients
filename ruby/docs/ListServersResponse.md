# LumoAuthApiClient::ListServersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | **Array&lt;Object&gt;** | Historical key (kept for back-compat). | [optional] |
| **data** | [**Array&lt;ListServersResponseDataItem&gt;**](ListServersResponseDataItem.md) | Canonical list envelope items. | [optional] |
| **pagination** | **Object** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListServersResponse.new(
  servers: null,
  data: null,
  pagination: null
)
```

