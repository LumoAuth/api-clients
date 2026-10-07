# LumoAuthApiClient::AdminIdentitiesLegacySamlReportResponseDataUsersItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **name_id** | **String** |  | [optional] |
| **candidate_idp_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **suggested_idp_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesLegacySamlReportResponseDataUsersItem.new(
  user_id: null,
  email: null,
  name_id: null,
  candidate_idp_ids: null,
  suggested_idp_id: null
)
```

