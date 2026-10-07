# LumoAuthApiClient::AdminIdentitiesLegacySamlRelinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **Integer** |  |  |
| **user_ids** | **Array&lt;String&gt;** |  | [optional] |
| **all_matching_domains** | **Boolean** |  | [optional][default to false] |
| **dry_run** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminIdentitiesLegacySamlRelinkRequest.new(
  idp_id: null,
  user_ids: null,
  all_matching_domains: null,
  dry_run: null
)
```

