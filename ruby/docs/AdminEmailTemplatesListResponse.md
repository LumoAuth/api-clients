# LumoAuthApiClient::AdminEmailTemplatesListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_templates** | [**Array&lt;EmailTemplate&gt;**](EmailTemplate.md) |  | [optional] |
| **data** | [**Array&lt;EmailTemplate&gt;**](EmailTemplate.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminEmailTemplatesListResponse.new(
  email_templates: null,
  data: null,
  pagination: null
)
```

