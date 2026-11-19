# LumoAuthApiClient::AbacPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional] |
| **effect** | **String** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **is_system** | **Boolean** |  | [optional] |
| **built_in** | **Boolean** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AbacPolicy.new(
  id: null,
  name: null,
  slug: null,
  description: null,
  resource_type: null,
  action: null,
  effect: null,
  priority: null,
  conditions: null,
  is_active: null,
  is_system: null,
  built_in: null,
  created_at: null,
  updated_at: null
)
```

