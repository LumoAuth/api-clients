# LumoAuthApiClient::CheckAbacResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed** | **Boolean** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **matched_policies** | [**Array&lt;CheckAbacResponseMatchedPoliciesItem&gt;**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] |
| **user_id** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **resource_id** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckAbacResponse.new(
  allowed: null,
  reason: No matching policies - default deny,
  matched_policies: null,
  user_id: null,
  resource_type: null,
  action: null,
  resource_id: null
)
```

