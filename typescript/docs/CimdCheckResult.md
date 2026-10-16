# CimdCheckResult

Result of POST /admin/clients/cimd/check — how the authorization server sees a Client ID Metadata Document.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **boolean** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] [default to undefined]
**client_id** | **string** |  | [optional] [default to undefined]
**enabled** | **boolean** | Whether CIMD is currently on for this organization (switch + plan). | [optional] [default to undefined]
**reason** | **string** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] [default to undefined]
**message** | **string** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] [default to undefined]
**warnings** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**document** | **{ [key: string]: any; }** | The metadata document as fetched. | [optional] [default to undefined]
**effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] [default to undefined]
**shadow_client** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] [default to undefined]

## Example

```typescript
import { CimdCheckResult } from '@lumoauth/api-client';

const instance: CimdCheckResult = {
    ok,
    client_id,
    enabled,
    reason,
    message,
    warnings,
    document,
    effective,
    shadow_client,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
