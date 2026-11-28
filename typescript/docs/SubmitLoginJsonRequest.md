# SubmitLoginJsonRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** |  | [default to undefined]
**password** | **string** |  | [default to undefined]
**captcha_token** | **string** | Needed when the organization has a CAPTCHA for sign-in. | [optional] [default to undefined]

## Example

```typescript
import { SubmitLoginJsonRequest } from '@lumoauth/api-client';

const instance: SubmitLoginJsonRequest = {
    email,
    password,
    captcha_token,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
