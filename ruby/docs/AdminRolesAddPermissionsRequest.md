# LumoAuthApiClient::AdminRolesAddPermissionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permission_id** | **Integer** | One permission id (or use permissionIds). | [optional] |
| **permission_ids** | **Array&lt;Integer&gt;** | Several permission ids. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminRolesAddPermissionsRequest.new(
  permission_id: null,
  permission_ids: null
)
```

