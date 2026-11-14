# AdminSettingsGeneralGetResponseData

name, displayName (the same value) and locale, then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the organization, shown on the hosted pages and in mail. | [optional] [default to undefined]
**displayName** | **string** | The same value as name. | [optional] [default to undefined]
**locale** | **string** | Default language of the hosted pages (the Default language of the login page settings). | [optional] [default to undefined]

## Example

```typescript
import { AdminSettingsGeneralGetResponseData } from '@lumoauth/api-client';

const instance: AdminSettingsGeneralGetResponseData = {
    name,
    displayName,
    locale,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
