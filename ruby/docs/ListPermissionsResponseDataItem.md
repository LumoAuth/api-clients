# LumoAuthApiClient::ListPermissionsResponseDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListPermissionsResponseDataItem.new(
  slug: document.edit,
  description: null,
  source: role:Editor
)
```

