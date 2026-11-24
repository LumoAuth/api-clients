# LumoAuthApiClient::CreateApprovalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] |
| **reason** | **String** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] |
| **impact** | **String** | One of low, medium, high, critical. | [optional] |
| **on_behalf_of** | **String** | User id or email the agent acts for (delegation required). When it is the agent&#39;s owner, the request also goes to the organization&#39;s Slack and Discord approval channels that have agent approvals switched on. | [optional] |
| **expires_in** | **Integer** | Seconds the person has to answer (60-600, default 120). An integer outside the range is clamped. | [optional][default to 120] |
| **meta** | [**CreateApprovalRequestMeta**](CreateApprovalRequestMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateApprovalRequest.new(
  task_id: task_abc123,
  reason: null,
  impact: medium,
  on_behalf_of: null,
  expires_in: null,
  meta: null
)
```

