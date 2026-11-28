# AdminOrgMembersAddRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **string** | ID of a user of this organization. | [default to undefined]
**roleId** | **number** | Optional: a role of the customer organization; its default role otherwise. | [optional] [default to undefined]

## Example

```typescript
import { AdminOrgMembersAddRequest } from '@lumoauth/api-client';

const instance: AdminOrgMembersAddRequest = {
    userId,
    roleId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
