# AdminPoppyUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | Option<**bool**> |  | [optional]
**issuer** | Option<**String**> | null for the platform address, or one of the active custom domains. | [optional]
**organization** | Option<[**models::AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md)> |  | [optional]
**domains** | Option<**Vec<String>**> |  | [optional]
**sign_in** | Option<[**models::AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md)> |  | [optional]
**scopes** | Option<[**std::collections::HashMap<String, models::AdminPoppyUpdateRequestScopesValue>**](AdminPoppyUpdateRequest_scopes_value.md)> | Scope name => {description, changes, personal_data}. | [optional]
**resources** | Option<**Vec<String>**> |  | [optional]
**apis** | Option<[**Vec<models::AdminPoppyUpdateRequestApisItem>**](AdminPoppyUpdateRequestApisItem.md)> |  | [optional]
**agent** | Option<[**Vec<models::AdminPoppyUpdateRequestAgentItem>**](AdminPoppyUpdateRequestAgentItem.md)> |  | [optional]
**web** | Option<[**models::AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md)> |  | [optional]
**tasks** | Option<[**models::AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md)> |  | [optional]
**extensions** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**sessions** | Option<[**models::AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


