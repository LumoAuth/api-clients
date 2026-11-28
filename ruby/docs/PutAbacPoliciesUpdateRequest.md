# LumoAuthApiClient::PutAbacPoliciesUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **effect** | **String** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAbacPoliciesUpdateRequest.new(
  name: null,
  description: null,
  resource_type: null,
  action: null,
  effect: null,
  priority: null,
  conditions: null
)
```

