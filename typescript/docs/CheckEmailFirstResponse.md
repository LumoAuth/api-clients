# CheckEmailFirstResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exists** | **boolean** | Always &#x60;true&#x60;. The answer never says whether the address has an account. | [default to undefined]
**magic_link_enabled** | **boolean** | The organization offers sign-in links. | [default to undefined]
**passkey_enabled** | **boolean** | The organization offers passkey sign-in. | [default to undefined]
**password_enabled** | **boolean** | The organization accepts passwords at sign-in. | [default to undefined]

## Example

```typescript
import { CheckEmailFirstResponse } from '@lumoauth/api-client';

const instance: CheckEmailFirstResponse = {
    exists,
    magic_link_enabled,
    passkey_enabled,
    password_enabled,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
