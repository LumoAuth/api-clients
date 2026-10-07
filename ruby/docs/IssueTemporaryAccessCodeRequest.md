# LumoAuthApiClient::IssueTemporaryAccessCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** |  |  |
| **ttl_minutes** | **Integer** |  | [optional][default to 60] |
| **single_use** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueTemporaryAccessCodeRequest.new(
  reason: User lost phone; identity verified by video call,
  ttl_minutes: null,
  single_use: null
)
```

