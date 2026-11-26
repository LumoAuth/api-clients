# LumoAuthApiClient::GetPoppySessionStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | unknown: no Session with this sid (never started, or forgotten after the idle period). |  |
| **user_id** | **String** |  | [optional] |
| **agent_id** | **String** |  | [optional] |
| **account** | **String** | The id of the account that the Session used, if any. | [optional] |
| **signed_in** | **Boolean** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. |  |
| **last_seen_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetPoppySessionStatusResponse.new(
  status: null,
  user_id: null,
  agent_id: null,
  account: null,
  signed_in: null,
  last_seen_at: null
)
```

