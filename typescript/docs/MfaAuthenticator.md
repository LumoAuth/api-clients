# MfaAuthenticator

One enrolled authenticator. `id` is a stable reference such as `totp:12` or `passkey:7`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**type** | **string** |  | [optional] [default to undefined]
**display_name** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**is_default** | **boolean** |  | [optional] [default to undefined]
**tier** | **number** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] [default to undefined]
**tier_label** | **string** |  | [optional] [default to undefined]
**amr** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]
**activated_at** | **string** |  | [optional] [default to undefined]
**last_used_at** | **string** |  | [optional] [default to undefined]
**last_used_context** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] [default to undefined]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { MfaAuthenticator } from '@lumoauth/api-client';

const instance: MfaAuthenticator = {
    id,
    type,
    display_name,
    state,
    is_default,
    tier,
    tier_label,
    amr,
    created_at,
    activated_at,
    last_used_at,
    last_used_context,
    metadata,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
