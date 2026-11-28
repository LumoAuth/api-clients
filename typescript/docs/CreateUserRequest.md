# CreateUserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** |  | [default to undefined]
**password** | **string** | Optional; must meet the organization\&#39;s password policy. | [optional] [default to undefined]
**username** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**givenName** | **string** |  | [optional] [default to undefined]
**familyName** | **string** |  | [optional] [default to undefined]
**phoneNumber** | **string** |  | [optional] [default to undefined]
**emailVerified** | **boolean** |  | [optional] [default to false]
**isActive** | **boolean** |  | [optional] [default to true]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**roles** | **Array&lt;string&gt;** | Role slugs or ids of this organization. | [optional] [default to undefined]
**groups** | **Array&lt;string&gt;** | Group slugs or ids of this organization. | [optional] [default to undefined]

## Example

```typescript
import { CreateUserRequest } from '@lumoauth/api-client';

const instance: CreateUserRequest = {
    email,
    password,
    username,
    name,
    givenName,
    familyName,
    phoneNumber,
    emailVerified,
    isActive,
    metadata,
    roles,
    groups,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
