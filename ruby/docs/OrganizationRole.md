# LumoAuthApiClient::OrganizationRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_owner** | **Boolean** |  | [optional] |
| **is_system** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OrganizationRole.new(
  id: null,
  slug: null,
  name: null,
  description: null,
  is_default: null,
  is_owner: null,
  is_system: null
)
```

