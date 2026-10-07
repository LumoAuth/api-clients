# LumoAuthApiClient::RegisteredClientMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  |  |
| **client_secret_expires_at** | **Integer** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] |
| **client_id_issued_at** | **Integer** | Unix seconds. |  |
| **registration_client_uri** | **String** |  | [optional] |
| **client_name** | **String** |  |  |
| **redirect_uris** | **Array&lt;String&gt;** |  |  |
| **response_types** | **Array&lt;String&gt;** |  |  |
| **grant_types** | **Array&lt;String&gt;** |  |  |
| **application_type** | **String** |  |  |
| **token_endpoint_auth_method** | **String** |  |  |
| **contacts** | **Array&lt;String&gt;** |  | [optional] |
| **client_uri** | **String** |  | [optional] |
| **logo_uri** | **String** |  | [optional] |
| **policy_uri** | **String** |  | [optional] |
| **tos_uri** | **String** |  | [optional] |
| **sector_identifier_uri** | **String** |  | [optional] |
| **subject_type** | **String** | Only when not \&quot;public\&quot;. | [optional] |
| **jwks_uri** | **String** |  | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **post_logout_redirect_uris** | **Array&lt;String&gt;** |  | [optional] |
| **initiate_login_uri** | **String** |  | [optional] |
| **request_uris** | **Array&lt;String&gt;** |  | [optional] |
| **scope** | **String** | Space-separated registered scopes. | [optional] |
| **id_token_signed_response_alg** | **String** | Only when not RS256. | [optional] |
| **userinfo_signed_response_alg** | **String** |  | [optional] |
| **request_object_signing_alg** | **String** |  | [optional] |
| **token_endpoint_auth_signing_alg** | **String** |  | [optional] |
| **default_max_age** | **Integer** |  | [optional] |
| **require_auth_time** | **Boolean** | Only when true. | [optional] |
| **default_acr_values** | **Array&lt;String&gt;** |  | [optional] |
| **frontchannel_logout_uri** | **String** |  | [optional] |
| **frontchannel_logout_session_required** | **Boolean** | Only when true. | [optional] |
| **backchannel_logout_uri** | **String** |  | [optional] |
| **backchannel_logout_session_required** | **Boolean** | Only when true. | [optional] |
| **audience_uris** | **Array&lt;String&gt;** | RFC 8707 resource indicators the client may request. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RegisteredClientMetadata.new(
  client_id: null,
  client_secret_expires_at: null,
  client_id_issued_at: null,
  registration_client_uri: null,
  client_name: null,
  redirect_uris: null,
  response_types: null,
  grant_types: null,
  application_type: null,
  token_endpoint_auth_method: null,
  contacts: null,
  client_uri: null,
  logo_uri: null,
  policy_uri: null,
  tos_uri: null,
  sector_identifier_uri: null,
  subject_type: null,
  jwks_uri: null,
  jwks: null,
  post_logout_redirect_uris: null,
  initiate_login_uri: null,
  request_uris: null,
  scope: null,
  id_token_signed_response_alg: null,
  userinfo_signed_response_alg: null,
  request_object_signing_alg: null,
  token_endpoint_auth_signing_alg: null,
  default_max_age: null,
  require_auth_time: null,
  default_acr_values: null,
  frontchannel_logout_uri: null,
  frontchannel_logout_session_required: null,
  backchannel_logout_uri: null,
  backchannel_logout_session_required: null,
  audience_uris: null
)
```

