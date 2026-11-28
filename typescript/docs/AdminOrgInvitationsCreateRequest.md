# AdminOrgInvitationsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** |  | [default to undefined]
**roleId** | **number** | Optional: a role of the customer organization. | [optional] [default to undefined]
**message** | **string** | Optional text for the invitation email. | [optional] [default to undefined]
**skipEmail** | **boolean** | true creates the invitation without sending the email. | [optional] [default to false]

## Example

```typescript
import { AdminOrgInvitationsCreateRequest } from '@lumoauth/api-client';

const instance: AdminOrgInvitationsCreateRequest = {
    email,
    roleId,
    message,
    skipEmail,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
