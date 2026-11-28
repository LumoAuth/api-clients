# SetUserPasswordPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **string** | Must meet the organization\&#39;s password policy. | [default to undefined]
**requireChange** | **boolean** | Ask the user to choose a new password at the next sign-in. | [optional] [default to false]

## Example

```typescript
import { SetUserPasswordPostRequest } from '@lumoauth/api-client';

const instance: SetUserPasswordPostRequest = {
    password,
    requireChange,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
