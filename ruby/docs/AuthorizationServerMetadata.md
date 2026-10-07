# LumoAuthApiClient::AuthorizationServerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** |  |  |
| **authorization_endpoint** | **String** |  |  |
| **token_endpoint** | **String** |  |  |
| **response_types_supported** | **Array&lt;String&gt;** |  |  |
| **jwks_uri** | **String** |  |  |
| **registration_endpoint** | **String** |  | [optional] |
| **scopes_supported** | **Array&lt;String&gt;** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] |
| **response_modes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **authorization_signing_alg_values_supported** | **Array&lt;String&gt;** | JARM signing algorithms. | [optional] |
| **grant_types_supported** | **Array&lt;String&gt;** |  | [optional] |
| **token_endpoint_auth_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **token_endpoint_auth_signing_alg_values_supported** | **Array&lt;String&gt;** |  | [optional] |
| **service_documentation** | **String** |  | [optional] |
| **ui_locales_supported** | **Array&lt;String&gt;** |  | [optional] |
| **revocation_endpoint** | **String** |  | [optional] |
| **revocation_endpoint_auth_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **introspection_endpoint** | **String** |  | [optional] |
| **introspection_endpoint_auth_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **code_challenge_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **authorization_response_iss_parameter_supported** | **Boolean** |  | [optional] |
| **request_parameter_supported** | **Boolean** |  | [optional] |
| **request_uri_parameter_supported** | **Boolean** |  | [optional] |
| **require_request_uri_registration** | **Boolean** |  | [optional] |
| **require_signed_request_object** | **Boolean** |  | [optional] |
| **request_object_signing_alg_values_supported** | **Array&lt;String&gt;** |  | [optional] |
| **device_authorization_endpoint** | **String** |  | [optional] |
| **pushed_authorization_request_endpoint** | **String** |  | [optional] |
| **require_pushed_authorization_requests** | **Boolean** |  | [optional] |
| **dpop_signing_alg_values_supported** | **Array&lt;String&gt;** |  | [optional] |
| **tls_client_certificate_bound_access_tokens** | **Boolean** |  | [optional] |
| **backchannel_authentication_endpoint** | **String** |  | [optional] |
| **backchannel_token_delivery_modes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **backchannel_user_code_parameter_supported** | **Boolean** |  | [optional] |
| **entity_profiles_supported** | **Array&lt;String&gt;** |  | [optional] |
| **client_id_metadata_document_supported** | **Boolean** | Only when CIMD is enabled for the organization. | [optional] |
| **authorization_grant_profiles_supported** | **Array&lt;String&gt;** | Only when the organization accepts ID-JAGs. | [optional] |
| **op_policy_uri** | **String** | Only when configured. | [optional] |
| **op_tos_uri** | **String** | Only when configured. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthorizationServerMetadata.new(
  issuer: null,
  authorization_endpoint: null,
  token_endpoint: null,
  response_types_supported: [&quot;code&quot;],
  jwks_uri: null,
  registration_endpoint: null,
  scopes_supported: null,
  response_modes_supported: null,
  authorization_signing_alg_values_supported: null,
  grant_types_supported: null,
  token_endpoint_auth_methods_supported: null,
  token_endpoint_auth_signing_alg_values_supported: null,
  service_documentation: https://docs.lumoauth.dev,
  ui_locales_supported: [&quot;en&quot;],
  revocation_endpoint: null,
  revocation_endpoint_auth_methods_supported: null,
  introspection_endpoint: null,
  introspection_endpoint_auth_methods_supported: null,
  code_challenge_methods_supported: [&quot;S256&quot;],
  authorization_response_iss_parameter_supported: true,
  request_parameter_supported: true,
  request_uri_parameter_supported: true,
  require_request_uri_registration: false,
  require_signed_request_object: false,
  request_object_signing_alg_values_supported: null,
  device_authorization_endpoint: null,
  pushed_authorization_request_endpoint: null,
  require_pushed_authorization_requests: false,
  dpop_signing_alg_values_supported: null,
  tls_client_certificate_bound_access_tokens: false,
  backchannel_authentication_endpoint: null,
  backchannel_token_delivery_modes_supported: [&quot;poll&quot;],
  backchannel_user_code_parameter_supported: false,
  entity_profiles_supported: [&quot;user&quot;,&quot;ai_agent&quot;,&quot;workload&quot;],
  client_id_metadata_document_supported: null,
  authorization_grant_profiles_supported: [&quot;urn:ietf:params:oauth:grant-profile:id-jag&quot;],
  op_policy_uri: null,
  op_tos_uri: null
)
```

