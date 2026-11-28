# LumoAuthApiClient::RegisterClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_uris** | **Array&lt;String&gt;** |  | [optional] |
| **client_name** | **String** |  | [optional] |
| **grant_types** | **Array&lt;String&gt;** |  | [optional] |
| **response_types** | **Array&lt;String&gt;** |  | [optional] |
| **token_endpoint_auth_method** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **jwks_uri** | **String** |  | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **application_type** | **String** |  | [optional] |
| **post_logout_redirect_uris** | **Array&lt;String&gt;** |  | [optional] |
| **backchannel_logout_uri** | **String** |  | [optional] |
| **frontchannel_logout_uri** | **String** |  | [optional] |
| **client_uri** | **String** |  | [optional] |
| **logo_uri** | **String** |  | [optional] |
| **policy_uri** | **String** |  | [optional] |
| **tos_uri** | **String** |  | [optional] |
| **contacts** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RegisterClientRequest.new(
  redirect_uris: null,
  client_name: null,
  grant_types: null,
  response_types: null,
  token_endpoint_auth_method: null,
  scope: null,
  jwks_uri: null,
  jwks: null,
  application_type: null,
  post_logout_redirect_uris: null,
  backchannel_logout_uri: null,
  frontchannel_logout_uri: null,
  client_uri: null,
  logo_uri: null,
  policy_uri: null,
  tos_uri: null,
  contacts: null
)
```

