# LumoAuthApiClient::CheckAbacBulkResponseResultsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **resource_id** | **String** |  | [optional] |
| **allowed** | **Boolean** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **error** | **String** | Only present for invalid entries | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckAbacBulkResponseResultsItem.new(
  index: null,
  resource_type: null,
  action: null,
  resource_id: null,
  allowed: null,
  reason: null,
  error: Missing required fields
)
```

