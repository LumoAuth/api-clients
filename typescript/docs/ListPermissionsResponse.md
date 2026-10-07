# ListPermissionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **string** |  | [optional] [default to undefined]
**permissions** | [**Array&lt;ListPermissionsResponsePermissionsItem&gt;**](ListPermissionsResponsePermissionsItem.md) |  | [optional] [default to undefined]
**count** | **number** |  | [optional] [default to undefined]
**data** | [**Array&lt;ListPermissionsResponseDataItem&gt;**](ListPermissionsResponseDataItem.md) |  | [optional] [default to undefined]
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] [default to undefined]

## Example

```typescript
import { ListPermissionsResponse } from '@lumoauth/api-client';

const instance: ListPermissionsResponse = {
    user_id,
    permissions,
    count,
    data,
    pagination,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
