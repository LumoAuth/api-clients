# # AdminPoppyUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional]
**issuer** | **string** | null for the platform address, or one of the active custom domains. | [optional]
**organization** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional]
**domains** | **string[]** |  | [optional]
**signIn** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional]
**scopes** | [**array<string,\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestScopesValue>**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional]
**resources** | **string[]** |  | [optional]
**apis** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestApisItem[]**](AdminPoppyUpdateRequestApisItem.md) |  | [optional]
**agent** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestAgentItem[]**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional]
**web** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional]
**tasks** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional]
**extensions** | **array<string,mixed>** |  | [optional]
**sessions** | [**\LumoAuth\ApiClient\Model\AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
