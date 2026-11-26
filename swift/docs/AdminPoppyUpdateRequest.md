# AdminPoppyUpdateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Bool** |  | [optional] 
**issuer** | **String** | null for the platform address, or one of the active custom domains. | [optional] 
**organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] 
**domains** | **[String]** |  | [optional] 
**signIn** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] 
**scopes** | [String: AdminPoppyUpdateRequestScopesValue] | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] 
**resources** | **[String]** |  | [optional] 
**apis** | [AdminPoppyUpdateRequestApisItem] |  | [optional] 
**agent** | [AdminPoppyUpdateRequestAgentItem] |  | [optional] 
**web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] 
**tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] 
**extensions** | **[String: AnyCodable]** |  | [optional] 
**sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


