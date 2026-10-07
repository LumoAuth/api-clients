# LumoAuthApiClient::AdminIdentitiesLegacySamlReportResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_count** | **Integer** |  | [optional] |
| **ambiguous** | **Boolean** |  | [optional] |
| **users** | [**Array&lt;AdminIdentitiesLegacySamlReportResponseDataUsersItem&gt;**](AdminIdentitiesLegacySamlReportResponseDataUsersItem.md) |  | [optional] |
| **idps** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesLegacySamlReportResponseData.new(
  idp_count: null,
  ambiguous: null,
  users: null,
  idps: null
)
```

