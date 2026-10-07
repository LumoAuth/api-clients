# GetJwksResponseKeysItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kty** | **string** |  | [default to undefined]
**kid** | **string** |  | [default to undefined]
**use** | **string** |  | [optional] [default to undefined]
**alg** | **string** |  | [optional] [default to undefined]
**n** | **string** | RSA modulus, base64url (RSA keys). | [optional] [default to undefined]
**e** | **string** | RSA exponent, base64url (RSA keys). | [optional] [default to undefined]
**crv** | **string** | Curve name (EC keys). | [optional] [default to undefined]
**x** | **string** | EC x coordinate, base64url (EC keys). | [optional] [default to undefined]
**y** | **string** | EC y coordinate, base64url (EC keys). | [optional] [default to undefined]

## Example

```typescript
import { GetJwksResponseKeysItem } from '@lumoauth/api-client';

const instance: GetJwksResponseKeysItem = {
    kty,
    kid,
    use,
    alg,
    n,
    e,
    crv,
    x,
    y,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
