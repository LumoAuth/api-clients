# AdminSettingsAllResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general** | Option<[**models::AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md)> |  | [optional]
**authentication** | Option<[**models::AuthenticationSettings**](AuthenticationSettings.md)> |  | [optional]
**branding** | Option<[**models::BrandingSettings**](BrandingSettings.md)> |  | [optional]
**security** | Option<[**models::AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md)> |  | [optional]
**email** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


