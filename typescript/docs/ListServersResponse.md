# ListServersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**servers** | **Array&lt;object&gt;** | Historical key (kept for back-compat). | [optional] [default to undefined]
**data** | [**Array&lt;ListServersResponseDataItem&gt;**](ListServersResponseDataItem.md) | Canonical list envelope items. | [optional] [default to undefined]
**pagination** | **object** |  | [optional] [default to undefined]

## Example

```typescript
import { ListServersResponse } from '@lumoauth/api-client';

const instance: ListServersResponse = {
    servers,
    data,
    pagination,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
