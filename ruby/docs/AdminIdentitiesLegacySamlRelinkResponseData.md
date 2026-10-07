# LumoAuthApiClient::AdminIdentitiesLegacySamlRelinkResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** |  | [optional] |
| **idp_id** | **Integer** |  | [optional] |
| **relinked** | **Array&lt;Object&gt;** |  | [optional] |
| **skipped** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesLegacySamlRelinkResponseData.new(
  dry_run: null,
  idp_id: null,
  relinked: null,
  skipped: null
)
```

