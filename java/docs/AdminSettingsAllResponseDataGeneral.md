

# AdminSettingsAllResponseDataGeneral

The organization name (name; displayName is the same value), locale (the default language of the hosted pages), then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**displayName** | **String** |  |  [optional] |
|**locale** | **String** |  |  [optional] |



