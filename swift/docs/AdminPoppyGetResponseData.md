# AdminPoppyGetResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settings** | **[String: AnyCodable]** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] 
**active** | **Bool** | The protocol is switched on, in the plan, and the organization is active. | [optional] 
**inPlan** | **Bool** |  | [optional] 
**identifier** | **String** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] 
**issuerChoices** | [AdminPoppyGetResponseDataIssuerChoicesItem] |  | [optional] 
**offeredScopes** | **[String]** |  | [optional] 
**offeredResources** | **[String]** |  | [optional] 
**tasksEndpoint** | **String** |  | [optional] 
**feedbackEndpoint** | **String** |  | [optional] 
**documents** | [AdminPoppyGetResponseDataDocumentsItem] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


