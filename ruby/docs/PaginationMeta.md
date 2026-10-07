# LumoAuthApiClient::PaginationMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **page** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **total_pages** | **Integer** |  |  |
| **has_next_page** | **Boolean** |  |  |
| **has_previous_page** | **Boolean** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PaginationMeta.new(
  total: null,
  page: null,
  limit: null,
  total_pages: null,
  has_next_page: null,
  has_previous_page: null
)
```

