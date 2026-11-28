# LumoAuthApiClient::AbacPoliciesCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_type** | **String** |  |  |
| **action** | **String** | One action, a comma-separated list of actions, or *. |  |
| **effect** | **String** |  |  |
| **priority** | **Integer** |  | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** | A condition group: {\&quot;operator\&quot;: \&quot;AND\&quot;|\&quot;OR\&quot;, \&quot;conditions\&quot;: [...]}. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AbacPoliciesCreateRequest.new(
  name: null,
  slug: null,
  description: null,
  resource_type: null,
  action: null,
  effect: null,
  priority: null,
  conditions: null
)
```

