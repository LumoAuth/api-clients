# LumoAuthApiClient::AdminPermissionsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** | Lowercase letters, digits, dots, hyphens and underscores (for example invoices.approve). Built-in and reserved slugs are refused. |  |
| **description** | **String** |  | [optional] |
| **resource** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPermissionsCreateRequest.new(
  name: null,
  slug: null,
  description: null,
  resource: null,
  action: null
)
```

