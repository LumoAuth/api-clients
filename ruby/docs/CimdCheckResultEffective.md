# LumoAuthApiClient::CimdCheckResultEffective

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_name** | **String** |  | [optional] |
| **application_type** | **String** |  | [optional] |
| **token_endpoint_auth_method** | **String** |  | [optional] |
| **public_client** | **Boolean** |  | [optional] |
| **pkce_required** | **Boolean** |  | [optional] |
| **redirect_uris** | **Array&lt;String&gt;** |  | [optional] |
| **dropped_redirect_uris** | **Array&lt;String&gt;** | Loopback URIs removed by the organization&#39;s localhost policy. | [optional] |
| **grant_types** | **Array&lt;String&gt;** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **dropped_scopes** | **Array&lt;String&gt;** | Scopes the document asked for that are neither identity scopes nor on the organization&#39;s cimd_allowed_scopes list. | [optional] |
| **logo_uri** | **String** |  | [optional] |
| **client_uri** | **String** |  | [optional] |
| **has_loopback_redirect** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CimdCheckResultEffective.new(
  client_name: null,
  application_type: null,
  token_endpoint_auth_method: null,
  public_client: null,
  pkce_required: null,
  redirect_uris: null,
  dropped_redirect_uris: null,
  grant_types: null,
  scopes: null,
  dropped_scopes: null,
  logo_uri: null,
  client_uri: null,
  has_loopback_redirect: null
)
```

