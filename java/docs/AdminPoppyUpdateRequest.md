

# AdminPoppyUpdateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**enabled** | **Boolean** |  |  [optional] |
|**issuer** | **String** | null for the platform address, or one of the active custom domains. |  [optional] |
|**organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  |  [optional] |
|**domains** | **List&lt;String&gt;** |  |  [optional] |
|**signIn** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  |  [optional] |
|**scopes** | [**Map&lt;String, AdminPoppyUpdateRequestScopesValue&gt;**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. |  [optional] |
|**resources** | **List&lt;URI&gt;** |  |  [optional] |
|**apis** | [**List&lt;AdminPoppyUpdateRequestApisItem&gt;**](AdminPoppyUpdateRequestApisItem.md) |  |  [optional] |
|**agent** | [**List&lt;AdminPoppyUpdateRequestAgentItem&gt;**](AdminPoppyUpdateRequestAgentItem.md) |  |  [optional] |
|**web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  |  [optional] |
|**tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  |  [optional] |
|**extensions** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  |  [optional] |



