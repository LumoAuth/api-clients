# LumoAuthApiClient::Organization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **slug** | **String** |  |  |
| **name** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **logo_url** | **String** |  | [optional] |
| **is_active** | **Boolean** |  |  |
| **member_count** | **Integer** |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::Organization.new(
  id: null,
  slug: null,
  name: null,
  display_name: null,
  description: null,
  logo_url: null,
  is_active: null,
  member_count: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

