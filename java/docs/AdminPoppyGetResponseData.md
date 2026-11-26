

# AdminPoppyGetResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**settings** | **Map&lt;String, Object&gt;** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. |  [optional] |
|**active** | **Boolean** | The protocol is switched on, in the plan, and the organization is active. |  [optional] |
|**inPlan** | **Boolean** |  |  [optional] |
|**identifier** | **URI** | The Company identifier: the issuer that Session JWTs name as aud. |  [optional] |
|**issuerChoices** | [**List&lt;AdminPoppyGetResponseDataIssuerChoicesItem&gt;**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  |  [optional] |
|**offeredScopes** | **List&lt;String&gt;** |  |  [optional] |
|**offeredResources** | **List&lt;URI&gt;** |  |  [optional] |
|**tasksEndpoint** | **URI** |  |  [optional] |
|**feedbackEndpoint** | **URI** |  |  [optional] |
|**documents** | [**List&lt;AdminPoppyGetResponseDataDocumentsItem&gt;**](AdminPoppyGetResponseDataDocumentsItem.md) |  |  [optional] |



