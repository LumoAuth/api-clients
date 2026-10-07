# PutAdminSettingsGeneralUpdateResponseData

Organization name plus the raw settings dictionary: any stored key (display_name, timezone, locale, security, email, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**timezone** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSettingsGeneralUpdateResponseData } from '@lumoauth/api-client';

const instance: PutAdminSettingsGeneralUpdateResponseData = {
    name,
    displayName,
    timezone,
    locale,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
