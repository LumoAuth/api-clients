# LumoAuthApiClient::StartAgentEnrollmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **host** | **String** |  |  |
| **host_label** | **String** |  | [optional] |
| **jwks** | [**StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  |  |
| **capabilities** | [**Array&lt;StartAgentEnrollmentRequestCapabilitiesItem&gt;**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  |  |
| **delegation** | **Boolean** | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional] |
| **inventory** | [**StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::StartAgentEnrollmentRequest.new(
  name: OpenClaw on mac-mini,
  host: null,
  host_label: mac-mini.local,
  jwks: null,
  capabilities: null,
  delegation: null,
  inventory: null
)
```

