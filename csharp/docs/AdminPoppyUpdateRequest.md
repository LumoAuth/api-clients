# LumoAuth.ApiClient.Model.AdminPoppyUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool** |  | [optional] 
**Issuer** | **string** | null for the platform address, or one of the active custom domains. | [optional] 
**Organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] 
**Domains** | **List&lt;string&gt;** |  | [optional] 
**SignIn** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] 
**Scopes** | [**Dictionary&lt;string, AdminPoppyUpdateRequestScopesValue&gt;**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] 
**Resources** | **List&lt;string&gt;** |  | [optional] 
**Apis** | [**List&lt;AdminPoppyUpdateRequestApisItem&gt;**](AdminPoppyUpdateRequestApisItem.md) |  | [optional] 
**Agent** | [**List&lt;AdminPoppyUpdateRequestAgentItem&gt;**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional] 
**Web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] 
**Tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] 
**Extensions** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

