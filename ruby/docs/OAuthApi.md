# LumoAuthApiClient::OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint |
| [**backchannel_authorize**](OAuthApi.md#backchannel_authorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request |
| [**device_authorization**](OAuthApi.md#device_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628) |
| [**get_client_configuration**](OAuthApi.md#get_client_configuration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4) |
| [**get_device_verification**](OAuthApi.md#get_device_verification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3) |
| [**get_org_selection**](OAuthApi.md#get_org_selection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page |
| [**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662) |
| [**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126) |
| [**passkey_login**](OAuthApi.md#passkey_login) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point |
| [**register_client**](OAuthApi.md#register_client) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR) |
| [**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009) |
| [**social_callback**](OAuthApi.md#social_callback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback |
| [**social_callback_post**](OAuthApi.md#social_callback_post) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post) |
| [**social_login**](OAuthApi.md#social_login) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login |
| [**submit_authorization**](OAuthApi.md#submit_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission) |
| [**submit_device_verification**](OAuthApi.md#submit_device_verification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification |
| [**submit_login**](OAuthApi.md#submit_login) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission |
| [**submit_login_json**](OAuthApi.md#submit_login_json) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow |
| [**submit_org_selection**](OAuthApi.md#submit_org_selection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection |
| [**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint |


## authorize

> String authorize(org_id)

OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client's redirect_uri in the requested response_mode. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # OAuth 2.1 / OIDC authorization endpoint
  result = api_instance.authorize(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->authorize: #{e}"
end
```

#### Using the authorize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> authorize_with_http_info(org_id)

```ruby
begin
  # OAuth 2.1 / OIDC authorization endpoint
  data, status_code, headers = api_instance.authorize_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->authorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## backchannel_authorize

> <BackchannelAuthorizeResponse> backchannel_authorize(org_id)

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # CIBA backchannel authentication request
  result = api_instance.backchannel_authorize(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->backchannel_authorize: #{e}"
end
```

#### Using the backchannel_authorize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackchannelAuthorizeResponse>, Integer, Hash)> backchannel_authorize_with_http_info(org_id)

```ruby
begin
  # CIBA backchannel authentication request
  data, status_code, headers = api_instance.backchannel_authorize_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackchannelAuthorizeResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->backchannel_authorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## device_authorization

> <DeviceAuthorizationResponse> device_authorization(org_id)

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Device authorization request (RFC 8628)
  result = api_instance.device_authorization(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->device_authorization: #{e}"
end
```

#### Using the device_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceAuthorizationResponse>, Integer, Hash)> device_authorization_with_http_info(org_id)

```ruby
begin
  # Device authorization request (RFC 8628)
  data, status_code, headers = api_instance.device_authorization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceAuthorizationResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->device_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client_configuration

> <RegisteredClientMetadata> get_client_configuration(org_id, client_id)

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
  result = api_instance.get_client_configuration(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_client_configuration: #{e}"
end
```

#### Using the get_client_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegisteredClientMetadata>, Integer, Hash)> get_client_configuration_with_http_info(org_id, client_id)

```ruby
begin
  # Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
  data, status_code, headers = api_instance.get_client_configuration_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegisteredClientMetadata>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_client_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_verification

> String get_device_verification(org_id)

Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Device verification page (RFC 8628 §3.3)
  result = api_instance.get_device_verification(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_device_verification: #{e}"
end
```

#### Using the get_device_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_device_verification_with_http_info(org_id)

```ruby
begin
  # Device verification page (RFC 8628 §3.3)
  data, status_code, headers = api_instance.get_device_verification_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_device_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## get_org_selection

> String get_org_selection(org_id)

Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Organization selector page
  result = api_instance.get_org_selection(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_org_selection: #{e}"
end
```

#### Using the get_org_selection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_org_selection_with_http_info(org_id)

```ruby
begin
  # Organization selector page
  data, status_code, headers = api_instance.get_org_selection_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_org_selection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## introspect

> <IntrospectResponse> introspect(org_id)

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Token introspection (RFC 7662)
  result = api_instance.introspect(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->introspect: #{e}"
end
```

#### Using the introspect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntrospectResponse>, Integer, Hash)> introspect_with_http_info(org_id)

```ruby
begin
  # Token introspection (RFC 7662)
  data, status_code, headers = api_instance.introspect_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntrospectResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->introspect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## par

> <ParResponse> par(org_id)

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Pushed authorization request (RFC 9126)
  result = api_instance.par(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->par: #{e}"
end
```

#### Using the par_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ParResponse>, Integer, Hash)> par_with_http_info(org_id)

```ruby
begin
  # Pushed authorization request (RFC 9126)
  data, status_code, headers = api_instance.par_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ParResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->par_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## passkey_login

> passkey_login(org_id)

Passkey login entry point

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Passkey login entry point
  api_instance.passkey_login(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->passkey_login: #{e}"
end
```

#### Using the passkey_login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> passkey_login_with_http_info(org_id)

```ruby
begin
  # Passkey login entry point
  data, status_code, headers = api_instance.passkey_login_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->passkey_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## register_client

> <RegisterClientResponse> register_client(org_id)

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Dynamic client registration (RFC 7591 / OIDC DCR)
  result = api_instance.register_client(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->register_client: #{e}"
end
```

#### Using the register_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegisterClientResponse>, Integer, Hash)> register_client_with_http_info(org_id)

```ruby
begin
  # Dynamic client registration (RFC 7591 / OIDC DCR)
  data, status_code, headers = api_instance.register_client_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegisterClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->register_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke

> Object revoke(org_id)

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Token revocation (RFC 7009)
  result = api_instance.revoke(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->revoke: #{e}"
end
```

#### Using the revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> revoke_with_http_info(org_id)

```ruby
begin
  # Token revocation (RFC 7009)
  data, status_code, headers = api_instance.revoke_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## social_callback

> social_callback(org_id, provider)

Social / enterprise identity-provider callback

Receives the provider's authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Social / enterprise identity-provider callback
  api_instance.social_callback(org_id, provider)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_callback: #{e}"
end
```

#### Using the social_callback_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> social_callback_with_http_info(org_id, provider)

```ruby
begin
  # Social / enterprise identity-provider callback
  data, status_code, headers = api_instance.social_callback_with_http_info(org_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## social_callback_post

> social_callback_post(org_id, provider)

Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Social / enterprise identity-provider callback (form_post)
  api_instance.social_callback_post(org_id, provider)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_callback_post: #{e}"
end
```

#### Using the social_callback_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> social_callback_post_with_http_info(org_id, provider)

```ruby
begin
  # Social / enterprise identity-provider callback (form_post)
  data, status_code, headers = api_instance.social_callback_post_with_http_info(org_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_callback_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## social_login

> social_login(org_id, provider)

Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider's authorization endpoint. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Start social / enterprise identity-provider login
  api_instance.social_login(org_id, provider)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_login: #{e}"
end
```

#### Using the social_login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> social_login_with_http_info(org_id, provider)

```ruby
begin
  # Start social / enterprise identity-provider login
  data, status_code, headers = api_instance.social_login_with_http_info(org_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->social_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## submit_authorization

> String submit_authorization(org_id)

OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # OAuth 2.1 / OIDC authorization endpoint (form submission)
  result = api_instance.submit_authorization(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_authorization: #{e}"
end
```

#### Using the submit_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> submit_authorization_with_http_info(org_id)

```ruby
begin
  # OAuth 2.1 / OIDC authorization endpoint (form submission)
  data, status_code, headers = api_instance.submit_authorization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## submit_device_verification

> String submit_device_verification(org_id)

Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Submit device verification
  result = api_instance.submit_device_verification(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_device_verification: #{e}"
end
```

#### Using the submit_device_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> submit_device_verification_with_http_info(org_id)

```ruby
begin
  # Submit device verification
  data, status_code, headers = api_instance.submit_device_verification_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_device_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## submit_login

> submit_login(org_id)

Hosted login form submission

Receives the hosted OAuth login page's form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Hosted login form submission
  api_instance.submit_login(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login: #{e}"
end
```

#### Using the submit_login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_login_with_http_info(org_id)

```ruby
begin
  # Hosted login form submission
  data, status_code, headers = api_instance.submit_login_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## submit_login_json

> <SubmitLoginJsonResponse> submit_login_json(org_id)

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Programmatic (JSON) login for the authorization flow
  result = api_instance.submit_login_json(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login_json: #{e}"
end
```

#### Using the submit_login_json_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitLoginJsonResponse>, Integer, Hash)> submit_login_json_with_http_info(org_id)

```ruby
begin
  # Programmatic (JSON) login for the authorization flow
  data, status_code, headers = api_instance.submit_login_json_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitLoginJsonResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login_json_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_org_selection

> String submit_org_selection(org_id)

Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Submit organization selection
  result = api_instance.submit_org_selection(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_org_selection: #{e}"
end
```

#### Using the submit_org_selection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> submit_org_selection_with_http_info(org_id)

```ruby
begin
  # Submit organization selection
  data, status_code, headers = api_instance.submit_org_selection_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_org_selection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## token

> <TokenResponse> token(org_id)

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure HTTP basic authorization: ClientAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # OAuth 2.1 token endpoint
  result = api_instance.token(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> token_with_http_info(org_id)

```ruby
begin
  # OAuth 2.1 token endpoint
  data, status_code, headers = api_instance.token_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

