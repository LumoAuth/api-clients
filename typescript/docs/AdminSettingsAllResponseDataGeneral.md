# AdminSettingsAllResponseDataGeneral

The organization name (name; displayName is the same value), locale (the default language of the hosted pages), then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminSettingsAllResponseDataGeneral } from '@lumoauth/api-client';

const instance: AdminSettingsAllResponseDataGeneral = {
    name,
    displayName,
    locale,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
