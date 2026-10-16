# AdminClientsCimdCheckRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **string** | The Client Identifier URL (https, with a path). | [default to undefined]
**refresh** | **boolean** | Ignore the cached document and fetch it again. | [optional] [default to false]

## Example

```typescript
import { AdminClientsCimdCheckRequest } from '@lumoauth/api-client';

const instance: AdminClientsCimdCheckRequest = {
    client_id,
    refresh,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
