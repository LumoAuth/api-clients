# LumoAuthApiClient::MfaCoverageReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_users** | **Integer** |  | [optional] |
| **enrolled_users** | **Integer** |  | [optional] |
| **enrolled_pct** | **Float** |  | [optional] |
| **by_type** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **by_tier** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **requirement** | **String** |  | [optional] |
| **in_grace** | **Integer** |  | [optional] |
| **past_grace** | **Integer** |  | [optional] |
| **deferred** | **Integer** |  | [optional] |
| **generated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::MfaCoverageReport.new(
  total_users: null,
  enrolled_users: null,
  enrolled_pct: null,
  by_type: null,
  by_tier: null,
  requirement: null,
  in_grace: null,
  past_grace: null,
  deferred: null,
  generated_at: null
)
```

