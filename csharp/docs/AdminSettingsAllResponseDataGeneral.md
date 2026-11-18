# LumoAuth.ApiClient.Model.AdminSettingsAllResponseDataGeneral
The organization name (name; displayName is the same value), locale (the default language of the hosted pages), then the stored settings dictionary: any stored key (security, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | [optional] 
**DisplayName** | **string** |  | [optional] 
**Locale** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

