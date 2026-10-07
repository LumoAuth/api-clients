# AdminSettingsAllResponseDataSecurity

Free-form security settings dictionary, stored as sent (keys merge on update). dpop_require_nonce is the only key the server reads; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dpop_require_nonce** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminSettingsAllResponseDataSecurity } from '@lumoauth/api-client';

const instance: AdminSettingsAllResponseDataSecurity = {
    dpop_require_nonce,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
