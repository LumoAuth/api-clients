# AdminAgentsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Required. Human-readable agent name. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsCreateRequest } from '@lumoauth/api-client';

const instance: AdminAgentsCreateRequest = {
    name,
    description,
    capabilities,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
