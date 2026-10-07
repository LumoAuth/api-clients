# ListMyAuthenticatorsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** |  | [optional] [default to undefined]
**_default** | **string** |  | [optional] [default to undefined]
**authenticators** | [**Array&lt;MfaAuthenticator&gt;**](MfaAuthenticator.md) |  | [optional] [default to undefined]
**recovery_codes** | [**ListMyAuthenticatorsResponseRecoveryCodes**](ListMyAuthenticatorsResponseRecoveryCodes.md) |  | [optional] [default to undefined]
**allowed_types** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**recommended_type** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ListMyAuthenticatorsResponse } from '@lumoauth/api-client';

const instance: ListMyAuthenticatorsResponse = {
    status,
    _default,
    authenticators,
    recovery_codes,
    allowed_types,
    recommended_type,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
