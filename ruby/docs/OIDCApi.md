# LumoAuthApiClient::OIDCApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_session**](OIDCApi.md#check_session) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0) |
| [**logout**](OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0) |
| [**logout_post**](OIDCApi.md#logout_post) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission) |
| [**userinfo**](OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint |
| [**userinfo_post**](OIDCApi.md#userinfo_post) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST) |


## check_session

> String check_session(org_id)

OP session-check iframe (OIDC Session Management 1.0)

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage \"<client_id> <session_state>\" to learn whether the OP session changed. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  # OP session-check iframe (OIDC Session Management 1.0)
  result = api_instance.check_session(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->check_session: #{e}"
end
```

#### Using the check_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> check_session_with_http_info(org_id)

```ruby
begin
  # OP session-check iframe (OIDC Session Management 1.0)
  data, status_code, headers = api_instance.check_session_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->check_session_with_http_info: #{e}"
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


## logout

> String logout(org_id)

RP-initiated logout (OIDC RP-Initiated Logout 1.0)

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session's clients. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  # RP-initiated logout (OIDC RP-Initiated Logout 1.0)
  result = api_instance.logout(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> logout_with_http_info(org_id)

```ruby
begin
  # RP-initiated logout (OIDC RP-Initiated Logout 1.0)
  data, status_code, headers = api_instance.logout_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_with_http_info: #{e}"
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


## logout_post

> String logout_post(org_id)

RP-initiated logout (confirmation submission)

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  # RP-initiated logout (confirmation submission)
  result = api_instance.logout_post(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_post: #{e}"
end
```

#### Using the logout_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> logout_post_with_http_info(org_id)

```ruby
begin
  # RP-initiated logout (confirmation submission)
  data, status_code, headers = api_instance.logout_post_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_post_with_http_info: #{e}"
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


## userinfo

> <UserinfoResponse> userinfo(org_id)

OpenID Connect UserInfo endpoint

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  # OpenID Connect UserInfo endpoint
  result = api_instance.userinfo(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo: #{e}"
end
```

#### Using the userinfo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserinfoResponse>, Integer, Hash)> userinfo_with_http_info(org_id)

```ruby
begin
  # OpenID Connect UserInfo endpoint
  data, status_code, headers = api_instance.userinfo_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserinfoResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## userinfo_post

> <UserinfoResponse> userinfo_post(org_id)

OpenID Connect UserInfo endpoint (POST)

Identical to GET.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  # OpenID Connect UserInfo endpoint (POST)
  result = api_instance.userinfo_post(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_post: #{e}"
end
```

#### Using the userinfo_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserinfoResponse>, Integer, Hash)> userinfo_post_with_http_info(org_id)

```ruby
begin
  # OpenID Connect UserInfo endpoint (POST)
  data, status_code, headers = api_instance.userinfo_post_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserinfoResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

