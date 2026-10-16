

# CimdCheckResult

Result of POST /admin/clients/cimd/check — how the authorization server sees a Client ID Metadata Document.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). |  [optional] |
|**clientId** | **String** |  |  [optional] |
|**enabled** | **Boolean** | Whether CIMD is currently on for this organization (switch + plan). |  [optional] |
|**reason** | **String** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). |  [optional] |
|**message** | **String** | Developer-facing explanation of &#x60;reason&#x60;. |  [optional] |
|**warnings** | **List&lt;String&gt;** |  |  [optional] |
|**document** | **Map&lt;String, Object&gt;** | The metadata document as fetched. |  [optional] |
|**effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  |  [optional] |
|**shadowClient** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  |  [optional] |



