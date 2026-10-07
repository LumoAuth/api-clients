# OrganizationMember


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**user** | [**UserRef**](UserRef.md) |  | [optional] [default to undefined]
**role** | [**OrganizationMemberRole**](OrganizationMemberRole.md) |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**joinedAt** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { OrganizationMember } from '@lumoauth/api-client';

const instance: OrganizationMember = {
    id,
    user,
    role,
    status,
    joinedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
