

# PutAdminSettingsGeneralUpdateResponseData

name, displayName (the same value) and locale, then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**displayName** | **String** |  |  [optional] |
|**locale** | **String** |  |  [optional] |



