# EnrollAuthenticator201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**otpauth_uri** | **string** |  | [optional] [default to undefined]
**secret** | **string** |  | [optional] [default to undefined]
**secret_grouped** | **string** |  | [optional] [default to undefined]
**qr_data_uri** | **string** |  | [optional] [default to undefined]
**expires_at** | **string** |  | [optional] [default to undefined]
**masked_phone** | **string** |  | [optional] [default to undefined]
**resend_after** | **number** | Seconds until a new code may be requested | [optional] [default to undefined]
**masked_email** | **string** |  | [optional] [default to undefined]
**deep_link** | **string** |  | [optional] [default to undefined]
**activation_code** | **string** |  | [optional] [default to undefined]
**public_key** | **object** | WebAuthn PublicKeyCredentialCreationOptions | [optional] [default to undefined]

## Example

```typescript
import { EnrollAuthenticator201Response } from '@lumoauth/api-client';

const instance: EnrollAuthenticator201Response = {
    id,
    state,
    otpauth_uri,
    secret,
    secret_grouped,
    qr_data_uri,
    expires_at,
    masked_phone,
    resend_after,
    masked_email,
    deep_link,
    activation_code,
    public_key,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
