# LumoAuthApiClient::AdminOrganizationsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | At most 100 characters. |  |
| **slug** | **String** | Optional; derived from the name when left out. Lowercase letters, digits and hyphens. | [optional] |
| **display_name** | **String** | At most 255 characters. | [optional] |
| **description** | **String** |  | [optional] |
| **logo_url** | **String** | Absolute https URL. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminOrganizationsCreateRequest.new(
  name: Northwind Traders,
  slug: null,
  display_name: null,
  description: null,
  logo_url: null,
  metadata: null,
  is_active: null
)
```

