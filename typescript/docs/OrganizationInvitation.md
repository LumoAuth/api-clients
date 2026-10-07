# OrganizationInvitation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**email** | **string** |  | [optional] [default to undefined]
**role** | [**OrganizationInvitationRole**](OrganizationInvitationRole.md) |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**invitedBy** | **string** |  | [optional] [default to undefined]
**createdAt** | **string** |  | [optional] [default to undefined]
**expiresAt** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { OrganizationInvitation } from '@lumoauth/api-client';

const instance: OrganizationInvitation = {
    id,
    email,
    role,
    status,
    invitedBy,
    createdAt,
    expiresAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
