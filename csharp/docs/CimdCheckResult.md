# LumoAuth.ApiClient.Model.CimdCheckResult
Result of POST /admin/clients/cimd/check — how the authorization server sees a Client ID Metadata Document.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] 
**ClientId** | **string** |  | [optional] 
**Enabled** | **bool** | Whether CIMD is currently on for this organization (switch + plan). | [optional] 
**Reason** | **string** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] 
**Message** | **string** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] 
**Warnings** | **List&lt;string&gt;** |  | [optional] 
**Document** | **Dictionary&lt;string, Object&gt;** | The metadata document as fetched. | [optional] 
**Effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] 
**ShadowClient** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

