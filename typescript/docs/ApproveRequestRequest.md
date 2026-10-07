# ApproveRequestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ttl** | **number** | Optional TTL override in seconds. | [optional] [default to undefined]
**notes** | **string** | Optional reviewer notes (internal; never shown to the agent). | [optional] [default to undefined]
**agent_message** | **string** | Optional message the agent MAY read on the status endpoint / callback. | [optional] [default to undefined]

## Example

```typescript
import { ApproveRequestRequest } from '@lumoauth/api-client';

const instance: ApproveRequestRequest = {
    ttl,
    notes,
    agent_message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
