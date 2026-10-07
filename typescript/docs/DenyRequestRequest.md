# DenyRequestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **string** | Optional denial reason (internal; never shown to the agent). | [optional] [default to undefined]
**agent_message** | **string** | Optional message the agent MAY read on the status endpoint / callback. | [optional] [default to undefined]

## Example

```typescript
import { DenyRequestRequest } from '@lumoauth/api-client';

const instance: DenyRequestRequest = {
    reason,
    agent_message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
