# Group


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**slug** | **string** |  | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**isSystem** | **boolean** |  | [default to undefined]
**memberCount** | **number** |  | [default to undefined]
**roleCount** | **number** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**roles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only | [optional] [default to undefined]
**members** | [**Array&lt;UserRef&gt;**](UserRef.md) | Detailed responses only | [optional] [default to undefined]
**updatedAt** | **string** | Detailed responses only | [optional] [default to undefined]

## Example

```typescript
import { Group } from '@lumoauth/api-client';

const instance: Group = {
    id,
    name,
    slug,
    description,
    isSystem,
    memberCount,
    roleCount,
    createdAt,
    roles,
    members,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
