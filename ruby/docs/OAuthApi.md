# LumoAuthApiClient::OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize |  |
| [**backchannel_authorize**](OAuthApi.md#backchannel_authorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize |  |
| [**device_authorization**](OAuthApi.md#device_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device Authorization Endpoint (RFC 8628 Section 3.1 &amp; 3.2) |
| [**get_client_configuration**](OAuthApi.md#get_client_configuration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Client Configuration Endpoint per OIDC spec Section 4 |
| [**get_device_verification**](OAuthApi.md#get_device_verification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3) |
| [**get_org_selection**](OAuthApi.md#get_org_selection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select |  |
| [**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | RFC 7662 - Token Introspection Endpoint |
| [**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par |  |
| [**passkey_login**](OAuthApi.md#passkey_login) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login |  |
| [**register_client**](OAuthApi.md#register_client) | **POST** /orgs/{orgId}/api/v1/connect/register | Client Registration Endpoint per OIDC spec Section 3 |
| [**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | RFC 7009 - Token Revocation Endpoint |
| [**social_callback**](OAuthApi.md#social_callback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider. |
| [**social_callback_post**](OAuthApi.md#social_callback_post) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider. |
| [**social_login**](OAuthApi.md#social_login) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Initiate social login flow. |
| [**submit_authorization**](OAuthApi.md#submit_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize |  |
| [**submit_device_verification**](OAuthApi.md#submit_device_verification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3) |
| [**submit_login**](OAuthApi.md#submit_login) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit |  |
| [**submit_login_json**](OAuthApi.md#submit_login_json) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | JSON credential login, for applications that render their own sign-in form. |
| [**submit_org_selection**](OAuthApi.md#submit_org_selection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select |  |
| [**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 Token Endpoint |


## authorize

> authorize(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.authorize(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->authorize: #{e}"
end
```

#### Using the authorize_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->authorize_with_http_info: #{e}"
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


## backchannel_authorize

> backchannel_authorize(org_id)



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
  
  api_instance.backchannel_authorize(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->backchannel_authorize: #{e}"
end
```

#### Using the backchannel_authorize_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backchannel_authorize_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.backchannel_authorize_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->backchannel_authorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## device_authorization

> device_authorization(org_id)

Device Authorization Endpoint (RFC 8628 Section 3.1 & 3.2)

The device makes a request to the authorization server's device authorization endpoint, including the client identifier, and MAY also include a scope parameter.  Request: - POST /oauth/device_authorization - Content-Type: application/x-www-form-urlencoded - client_id (REQUIRED) - scope (OPTIONAL)  Response (Section 3.2): - device_code: High-entropy code for device polling - user_code: Short code for user to enter - verification_uri: URL where user should enter the code - verification_uri_complete: URL with user_code embedded (optional) - expires_in: Lifetime of device_code and user_code - interval: Minimum polling interval in seconds

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
  # Device Authorization Endpoint (RFC 8628 Section 3.1 & 3.2)
  api_instance.device_authorization(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->device_authorization: #{e}"
end
```

#### Using the device_authorization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> device_authorization_with_http_info(org_id)

```ruby
begin
  # Device Authorization Endpoint (RFC 8628 Section 3.1 & 3.2)
  data, status_code, headers = api_instance.device_authorization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->device_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_client_configuration

> get_client_configuration(org_id, client_id)

Client Configuration Endpoint per OIDC spec Section 4

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
  # Client Configuration Endpoint per OIDC spec Section 4
  api_instance.get_client_configuration(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_client_configuration: #{e}"
end
```

#### Using the get_client_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_client_configuration_with_http_info(org_id, client_id)

```ruby
begin
  # Client Configuration Endpoint per OIDC spec Section 4
  data, status_code, headers = api_instance.get_client_configuration_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_device_verification

> get_device_verification(org_id)

Device Verification Page (RFC 8628 Section 3.3)

This endpoint displays the user verification page where users enter their user_code to authorize the device.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Device Verification Page (RFC 8628 Section 3.3)
  api_instance.get_device_verification(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_device_verification: #{e}"
end
```

#### Using the get_device_verification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_device_verification_with_http_info(org_id)

```ruby
begin
  # Device Verification Page (RFC 8628 Section 3.3)
  data, status_code, headers = api_instance.get_device_verification_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_device_verification_with_http_info: #{e}"
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


## get_org_selection

> get_org_selection(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.get_org_selection(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_org_selection: #{e}"
end
```

#### Using the get_org_selection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_org_selection_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_org_selection_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->get_org_selection_with_http_info: #{e}"
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


## introspect

> introspect(org_id)

RFC 7662 - Token Introspection Endpoint

Allows resource servers to query the authorization server to determine the active state and meta-information about a token.

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
  # RFC 7662 - Token Introspection Endpoint
  api_instance.introspect(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->introspect: #{e}"
end
```

#### Using the introspect_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> introspect_with_http_info(org_id)

```ruby
begin
  # RFC 7662 - Token Introspection Endpoint
  data, status_code, headers = api_instance.introspect_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->introspect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## par

> par(org_id)



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
  
  api_instance.par(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->par: #{e}"
end
```

#### Using the par_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> par_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.par_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->par_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## passkey_login

> passkey_login(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
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

> register_client(org_id)

Client Registration Endpoint per OIDC spec Section 3

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
  # Client Registration Endpoint per OIDC spec Section 3
  api_instance.register_client(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->register_client: #{e}"
end
```

#### Using the register_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_client_with_http_info(org_id)

```ruby
begin
  # Client Registration Endpoint per OIDC spec Section 3
  data, status_code, headers = api_instance.register_client_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->register_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## revoke

> revoke(org_id)

RFC 7009 - Token Revocation Endpoint

Allows clients to notify the authorization server that a previously obtained token is no longer needed.

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
  # RFC 7009 - Token Revocation Endpoint
  api_instance.revoke(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->revoke: #{e}"
end
```

#### Using the revoke_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_with_http_info(org_id)

```ruby
begin
  # RFC 7009 - Token Revocation Endpoint
  data, status_code, headers = api_instance.revoke_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## social_callback

> social_callback(org_id, provider)

Handle social login callback from provider.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Handle social login callback from provider.
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
  # Handle social login callback from provider.
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

Handle social login callback from provider.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Handle social login callback from provider.
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
  # Handle social login callback from provider.
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

Initiate social login flow.

Redirects to the external provider's authorization endpoint.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 
provider = 'provider_example' # String | 

begin
  # Initiate social login flow.
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
  # Initiate social login flow.
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

> submit_authorization(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.submit_authorization(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_authorization: #{e}"
end
```

#### Using the submit_authorization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_authorization_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.submit_authorization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_authorization_with_http_info: #{e}"
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


## submit_device_verification

> submit_device_verification(org_id)

Device Verification Page (RFC 8628 Section 3.3)

This endpoint displays the user verification page where users enter their user_code to authorize the device.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Device Verification Page (RFC 8628 Section 3.3)
  api_instance.submit_device_verification(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_device_verification: #{e}"
end
```

#### Using the submit_device_verification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_device_verification_with_http_info(org_id)

```ruby
begin
  # Device Verification Page (RFC 8628 Section 3.3)
  data, status_code, headers = api_instance.submit_device_verification_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_device_verification_with_http_info: #{e}"
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


## submit_login

> submit_login(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
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

> submit_login_json(org_id)

JSON credential login, for applications that render their own sign-in form.

The form-post sibling below (`/login/submit`) does the same authentication but answers with a 302, which a fetch()-driven UI cannot act on. This returns the outcome as data so an embedded form can decide what to show — an MFA prompt, a field error, or continue the OAuth flow.  It deliberately does NOT mint tokens. On success it establishes the end-user session, exactly as the hosted login page does; the caller then continues to /oauth/authorize, which now issues a code without presenting a login screen. Keeping code issuance in one place means this endpoint cannot become a second, weaker way to obtain tokens.  Responses:   200 {\"status\":\"complete\"}          — signed in, continue to /authorize   200 {\"status\":\"mfa_required\"}      — challenge the second factor   401 {\"status\":\"invalid_credentials\"}   403 {\"status\":\"blocked\"|\"inactive\"}   429 {\"status\":\"rate_limited\"}

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # JSON credential login, for applications that render their own sign-in form.
  api_instance.submit_login_json(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login_json: #{e}"
end
```

#### Using the submit_login_json_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_login_json_with_http_info(org_id)

```ruby
begin
  # JSON credential login, for applications that render their own sign-in form.
  data, status_code, headers = api_instance.submit_login_json_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_login_json_with_http_info: #{e}"
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


## submit_org_selection

> submit_org_selection(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OAuthApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.submit_org_selection(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_org_selection: #{e}"
end
```

#### Using the submit_org_selection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_org_selection_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.submit_org_selection_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->submit_org_selection_with_http_info: #{e}"
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


## token

> token(org_id)

OAuth 2.1 Token Endpoint

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
  # OAuth 2.1 Token Endpoint
  api_instance.token(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> token_with_http_info(org_id)

```ruby
begin
  # OAuth 2.1 Token Endpoint
  data, status_code, headers = api_instance.token_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OAuthApi->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

