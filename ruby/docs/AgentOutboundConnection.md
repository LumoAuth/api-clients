# LumoAuthApiClient::AgentOutboundConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection_id** | **String** |  |  |
| **name** | **String** |  |  |
| **provider** | **String** |  |  |
| **provider_label** | **String** | Human-readable provider name. |  |
| **grant_mode** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **user_delegated** | **Boolean** |  |  |
| **machine_grant_status** | **String** | Status of the machine grant (not_established when none exists); null for user-delegated connections. |  |
| **linked_users** | **Integer** | Number of users with an active grant; null for machine connections. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AgentOutboundConnection.new(
  connection_id: null,
  name: null,
  provider: null,
  provider_label: null,
  grant_mode: null,
  scopes: null,
  user_delegated: null,
  machine_grant_status: null,
  linked_users: null
)
```

