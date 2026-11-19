

# AdminSettingsGeneralGetResponseData

name, displayName (the same value) and locale, then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Name of the organization, shown on the hosted pages and in mail. |  [optional] |
|**displayName** | **String** | The same value as name. |  [optional] |
|**locale** | **String** | Default language of the hosted pages (the Default language of the login page settings). |  [optional] |



