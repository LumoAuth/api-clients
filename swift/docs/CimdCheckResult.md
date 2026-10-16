# CimdCheckResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] 
**clientId** | **String** |  | [optional] 
**enabled** | **Bool** | Whether CIMD is currently on for this organization (switch + plan). | [optional] 
**reason** | **String** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] 
**message** | **String** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] 
**warnings** | **[String]** |  | [optional] 
**document** | **[String: AnyCodable]** | The metadata document as fetched. | [optional] 
**effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] 
**shadowClient** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


