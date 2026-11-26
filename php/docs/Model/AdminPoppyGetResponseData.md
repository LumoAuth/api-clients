# # AdminPoppyGetResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settings** | **array<string,mixed>** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional]
**active** | **bool** | The protocol is switched on, in the plan, and the organization is active. | [optional]
**inPlan** | **bool** |  | [optional]
**identifier** | **string** | The Company identifier: the issuer that Session JWTs name as aud. | [optional]
**issuerChoices** | [**\LumoAuth\ApiClient\Model\AdminPoppyGetResponseDataIssuerChoicesItem[]**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional]
**offeredScopes** | **string[]** |  | [optional]
**offeredResources** | **string[]** |  | [optional]
**tasksEndpoint** | **string** |  | [optional]
**feedbackEndpoint** | **string** |  | [optional]
**documents** | [**\LumoAuth\ApiClient\Model\AdminPoppyGetResponseDataDocumentsItem[]**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
