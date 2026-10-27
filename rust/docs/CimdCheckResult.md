# CimdCheckResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | Option<**bool**> | true when the document is valid and would be accepted (subject to `enabled`). | [optional]
**client_id** | Option<**String**> |  | [optional]
**enabled** | Option<**bool**> | Whether CIMD is currently on for this organization (switch + plan). | [optional]
**reason** | Option<**String**> | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional]
**message** | Option<**String**> | Developer-facing explanation of `reason`. | [optional]
**warnings** | Option<**Vec<String>**> |  | [optional]
**document** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | The metadata document as fetched. | [optional]
**effective** | Option<[**models::CimdCheckResultEffective**](CimdCheckResult_effective.md)> |  | [optional]
**shadow_client** | Option<[**models::CimdCheckResultShadowClient**](CimdCheckResult_shadow_client.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


