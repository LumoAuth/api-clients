# LumoAuthApiClient::PutAdminOrganizationsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **slug** | **String** | Leave it out to keep the slug; an empty slug is refused. | [optional] |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **logo_url** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminOrganizationsUpdateRequest.new(
  name: null,
  slug: null,
  display_name: null,
  description: null,
  logo_url: null,
  metadata: null,
  is_active: null
)
```

