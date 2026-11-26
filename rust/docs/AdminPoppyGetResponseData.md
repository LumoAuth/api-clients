# AdminPoppyGetResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settings** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional]
**active** | Option<**bool**> | The protocol is switched on, in the plan, and the organization is active. | [optional]
**in_plan** | Option<**bool**> |  | [optional]
**identifier** | Option<**String**> | The Company identifier: the issuer that Session JWTs name as aud. | [optional]
**issuer_choices** | Option<[**Vec<models::AdminPoppyGetResponseDataIssuerChoicesItem>**](AdminPoppyGetResponseDataIssuerChoicesItem.md)> |  | [optional]
**offered_scopes** | Option<**Vec<String>**> |  | [optional]
**offered_resources** | Option<**Vec<String>**> |  | [optional]
**tasks_endpoint** | Option<**String**> |  | [optional]
**feedback_endpoint** | Option<**String**> |  | [optional]
**documents** | Option<[**Vec<models::AdminPoppyGetResponseDataDocumentsItem>**](AdminPoppyGetResponseDataDocumentsItem.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


