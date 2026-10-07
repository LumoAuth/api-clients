# LumoAuthApiClient::GetRequestStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **risk_level** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **token_url** | **String** | Present when approved. | [optional] |
| **granted_ttl** | **Integer** | Present when approved. | [optional] |
| **has_notes** | **Boolean** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional] |
| **agent_message** | **String** | Present when decided: message the reviewer explicitly wrote for the agent. | [optional] |
| **delegation_consent_required** | **Boolean** | Present when pending: the on_behalf_of user must consent. | [optional] |
| **expires_at** | **Time** | Present when pending. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetRequestStatusResponse.new(
  request_id: null,
  status: pending,
  risk_level: null,
  task_id: null,
  token_url: null,
  granted_ttl: null,
  has_notes: null,
  agent_message: null,
  delegation_consent_required: null,
  expires_at: null
)
```

