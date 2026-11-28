# CheckAbacRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resourceType** | **string** |  | [default to undefined]
**action** | **string** |  | [default to undefined]
**resourceId** | **string** |  | [optional] [default to undefined]
**environment** | **{ [key: string]: any; }** | Values of defined environment attributes. | [optional] [default to undefined]

## Example

```typescript
import { CheckAbacRequest } from '@lumoauth/api-client';

const instance: CheckAbacRequest = {
    resourceType,
    action,
    resourceId,
    environment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
