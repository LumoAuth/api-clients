# PoppyVerifyResultAccount

The account of the access token; null for a signed-out request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **string** | The user\&#39;s id in your organization. | [optional] [default to undefined]
**scope** | **string** |  | [optional] [default to undefined]
**aud** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**exp** | **number** |  | [optional] [default to undefined]
**token_type** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyVerifyResultAccount } from '@lumoauth/api-client';

const instance: PoppyVerifyResultAccount = {
    sub,
    scope,
    aud,
    exp,
    token_type,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
