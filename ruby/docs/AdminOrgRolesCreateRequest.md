# LumoAuthApiClient::AdminOrgRolesCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** | Optional; derived from the name when left out. | [optional] |
| **description** | **String** |  | [optional] |
| **is_default** | **Boolean** | The role that new members get. | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminOrgRolesCreateRequest.new(
  name: null,
  slug: null,
  description: null,
  is_default: null
)
```

