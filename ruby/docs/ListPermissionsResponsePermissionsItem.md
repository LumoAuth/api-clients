# LumoAuthApiClient::ListPermissionsResponsePermissionsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **source** | **String** | role:&lt;role name&gt; that grants it | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListPermissionsResponsePermissionsItem.new(
  slug: document.edit,
  description: null,
  source: role:Editor
)
```

