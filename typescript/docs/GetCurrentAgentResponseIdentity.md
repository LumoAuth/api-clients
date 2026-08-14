# GetCurrentAgentResponseIdentity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**type** | **string** |  | [optional] [default to undefined]
**tenant** | **string** |  | [optional] [default to undefined]
**agent_id** | **string** | Present when the principal is an agent. | [optional] [default to undefined]
**status** | **string** | Present when the principal is an agent. | [optional] [default to undefined]

## Example

```typescript
import { GetCurrentAgentResponseIdentity } from '@lumoauth/api-client';

const instance: GetCurrentAgentResponseIdentity = {
    id,
    type,
    tenant,
    agent_id,
    status,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
