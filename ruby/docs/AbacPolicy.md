# LumoAuthApiClient::AbacPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **effect** | **String** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **is_system** | **Boolean** |  | [optional] |
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
  created_at: null,
  updated_at: null
)
```

