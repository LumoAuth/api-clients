# AdminSettingsGeneralGetResponseData

Defaults (displayName, timezone, locale) are filled in, then the raw settings dictionary is merged over them: any stored key (display_name, security, email, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**timezone** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminSettingsGeneralGetResponseData } from '@lumoauth/api-client';

const instance: AdminSettingsGeneralGetResponseData = {
    name,
    displayName,
    timezone,
    locale,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
