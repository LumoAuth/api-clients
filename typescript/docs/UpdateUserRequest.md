# UpdateUserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** | A change needs a caller who outranks the user (and a fresh sign-in for a person). | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**givenName** | **string** |  | [optional] [default to undefined]
**familyName** | **string** |  | [optional] [default to undefined]
**phoneNumber** | **string** |  | [optional] [default to undefined]
**picture** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]
**zoneinfo** | **string** |  | [optional] [default to undefined]
**emailVerified** | **boolean** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [optional] [default to undefined]
**staff** | **boolean** |  | [optional] [default to undefined]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { UpdateUserRequest } from '@lumoauth/api-client';

const instance: UpdateUserRequest = {
    email,
    name,
    givenName,
    familyName,
    phoneNumber,
    picture,
    locale,
    zoneinfo,
    emailVerified,
    isActive,
    staff,
    metadata,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
