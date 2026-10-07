# Role


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**slug** | **string** |  | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**isSystem** | **boolean** |  | [default to undefined]
**userCount** | **number** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**permissions** | [**Array&lt;RolePermissionsInner&gt;**](RolePermissionsInner.md) | Detailed responses only | [optional] [default to undefined]
**updatedAt** | **string** | Detailed responses only | [optional] [default to undefined]

## Example

```typescript
import { Role } from '@lumoauth/api-client';

const instance: Role = {
    id,
    name,
    slug,
    description,
    isSystem,
    userCount,
    createdAt,
    permissions,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
