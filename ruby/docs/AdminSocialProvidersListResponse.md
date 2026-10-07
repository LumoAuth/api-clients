# LumoAuthApiClient::AdminSocialProvidersListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;SocialLoginProvider&gt;**](SocialLoginProvider.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSocialProvidersListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: social_providers
)
```

