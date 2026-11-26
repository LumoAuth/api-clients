# PoppyDocumentAuth


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **string** | The organization\&#39;s issuer that personal agents use. | [optional] [default to undefined]
**disabled** | **boolean** | true while the organization offers personal agents no sign-in. | [optional] [default to undefined]
**scopes** | **{ [key: string]: string; }** | Scope name to description. | [optional] [default to undefined]
**scope_hints** | [**{ [key: string]: PoppyDocumentAuthScopeHintsValue; }**](PoppyDocumentAuthScopeHintsValue.md) |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyDocumentAuth } from '@lumoauth/api-client';

const instance: PoppyDocumentAuth = {
    issuer,
    disabled,
    scopes,
    scope_hints,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
