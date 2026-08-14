# LumoAuthApiClient::OIDCApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_session**](OIDCApi.md#check_session) | **GET** /orgs/{orgId}/api/v1/oauth/check_session |  |
| [**logout**](OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout |  |
| [**logout_post**](OIDCApi.md#logout_post) | **POST** /orgs/{orgId}/api/v1/oauth/logout |  |
| [**userinfo**](OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint |
| [**userinfo_post**](OIDCApi.md#userinfo_post) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint |


## check_session

> check_session(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.check_session(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->check_session: #{e}"
end
```

#### Using the check_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_session_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.check_session_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->check_session_with_http_info: #{e}"
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


## logout

> logout(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.logout(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.logout_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_with_http_info: #{e}"
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


## logout_post

> logout_post(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::OIDCApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.logout_post(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_post: #{e}"
end
```

#### Using the logout_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_post_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.logout_post_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->logout_post_with_http_info: #{e}"
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


## userinfo

> userinfo(org_id)

OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

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
  # OIDC UserInfo Endpoint
  api_instance.userinfo(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo: #{e}"
end
```

#### Using the userinfo_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> userinfo_with_http_info(org_id)

```ruby
begin
  # OIDC UserInfo Endpoint
  data, status_code, headers = api_instance.userinfo_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## userinfo_post

> userinfo_post(org_id)

OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

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
  # OIDC UserInfo Endpoint
  api_instance.userinfo_post(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_post: #{e}"
end
```

#### Using the userinfo_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> userinfo_post_with_http_info(org_id)

```ruby
begin
  # OIDC UserInfo Endpoint
  data, status_code, headers = api_instance.userinfo_post_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling OIDCApi->userinfo_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

