# # CimdCheckResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional]
**clientId** | **string** |  | [optional]
**enabled** | **bool** | Whether CIMD is currently on for this organization (switch + plan). | [optional]
**reason** | **string** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional]
**message** | **string** | Developer-facing explanation of &#x60;reason&#x60;. | [optional]
**warnings** | **string[]** |  | [optional]
**document** | **array<string,mixed>** | The metadata document as fetched. | [optional]
**effective** | [**\LumoAuth\ApiClient\Model\CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional]
**shadowClient** | [**\LumoAuth\ApiClient\Model\CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
