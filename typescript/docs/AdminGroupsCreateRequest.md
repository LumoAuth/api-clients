# AdminGroupsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** | Optional; derived from the name when left out. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**roles** | **Array&lt;string&gt;** | Optional role slugs. | [optional] [default to undefined]

## Example

```typescript
import { AdminGroupsCreateRequest } from '@lumoauth/api-client';

const instance: AdminGroupsCreateRequest = {
    name,
    slug,
    description,
    roles,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
