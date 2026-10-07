# AgentOutboundConnection


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_id** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**provider** | **string** |  | [default to undefined]
**provider_label** | **string** | Human-readable provider name. | [default to undefined]
**grant_mode** | **string** |  | [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [default to undefined]
**user_delegated** | **boolean** |  | [default to undefined]
**machine_grant_status** | **string** | Status of the machine grant (not_established when none exists); null for user-delegated connections. | [default to undefined]
**linked_users** | **number** | Number of users with an active grant; null for machine connections. | [default to undefined]

## Example

```typescript
import { AgentOutboundConnection } from '@lumoauth/api-client';

const instance: AgentOutboundConnection = {
    connection_id,
    name,
    provider,
    provider_label,
    grant_mode,
    scopes,
    user_delegated,
    machine_grant_status,
    linked_users,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
