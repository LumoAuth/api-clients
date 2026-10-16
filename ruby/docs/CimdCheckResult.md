# LumoAuthApiClient::CimdCheckResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] |
| **client_id** | **String** |  | [optional] |
| **enabled** | **Boolean** | Whether CIMD is currently on for this organization (switch + plan). | [optional] |
| **reason** | **String** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] |
| **message** | **String** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] |
| **warnings** | **Array&lt;String&gt;** |  | [optional] |
| **document** | **Hash&lt;String, Object&gt;** | The metadata document as fetched. | [optional] |
| **effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] |
| **shadow_client** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CimdCheckResult.new(
  ok: null,
  client_id: null,
  enabled: null,
  reason: null,
  message: null,
  warnings: null,
  document: null,
  effective: null,
  shadow_client: null
)
```

