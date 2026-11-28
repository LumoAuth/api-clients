# LumoAuthApiClient::AdminGroupsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** | Optional; derived from the name when left out. | [optional] |
| **description** | **String** |  | [optional] |
| **roles** | **Array&lt;String&gt;** | Optional role slugs. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminGroupsCreateRequest.new(
  name: null,
  slug: null,
  description: null,
  roles: null
)
```

