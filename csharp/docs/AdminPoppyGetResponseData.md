# LumoAuth.ApiClient.Model.AdminPoppyGetResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Settings** | **Dictionary&lt;string, Object&gt;** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] 
**Active** | **bool** | The protocol is switched on, in the plan, and the organization is active. | [optional] 
**InPlan** | **bool** |  | [optional] 
**Identifier** | **string** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] 
**IssuerChoices** | [**List&lt;AdminPoppyGetResponseDataIssuerChoicesItem&gt;**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional] 
**OfferedScopes** | **List&lt;string&gt;** |  | [optional] 
**OfferedResources** | **List&lt;string&gt;** |  | [optional] 
**TasksEndpoint** | **string** |  | [optional] 
**FeedbackEndpoint** | **string** |  | [optional] 
**Documents** | [**List&lt;AdminPoppyGetResponseDataDocumentsItem&gt;**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

