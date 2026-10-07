# LumoAuthApiClient::CreateMfaChallengeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purpose** | **String** |  | [optional][default to &#39;step_up&#39;] |
| **authenticator_id** | **String** |  | [optional] |
| **min_tier** | **Integer** | Require a factor at least this strong (1 &#x3D; passkey only) | [optional] |
| **action_description** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateMfaChallengeRequest.new(
  purpose: null,
  authenticator_id: push:5,
  min_tier: null,
  action_description: null
)
```

