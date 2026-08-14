# LumoAuthApiClient::AdminSessionsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_client_tokens_revoke_all**](AdminSessionsApi.md#admin_client_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens for a client |
| [**admin_client_tokens_revoke_post**](AdminSessionsApi.md#admin_client_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens for a client via POST |
| [**admin_sessions_count**](AdminSessionsApi.md#admin_sessions_count) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Get active session count for the tenant |
| [**admin_sessions_list**](AdminSessionsApi.md#admin_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions for the tenant |
| [**admin_sessions_revoke**](AdminSessionsApi.md#admin_sessions_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a specific session |
| [**admin_sessions_revoke_all**](AdminSessionsApi.md#admin_sessions_revoke_all) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke all tenant sessions via POST |
| [**admin_sessions_stats**](AdminSessionsApi.md#admin_sessions_stats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Get session statistics for the tenant |
| [**admin_tokens_list**](AdminSessionsApi.md#admin_tokens_list) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens for the tenant |
| [**admin_tokens_revoke**](AdminSessionsApi.md#admin_tokens_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token |
| [**admin_user_sessions_list**](AdminSessionsApi.md#admin_user_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Get sessions for a specific user |
| [**admin_user_sessions_revoke_all**](AdminSessionsApi.md#admin_user_sessions_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions for a user |
| [**admin_user_sessions_revoke_post**](AdminSessionsApi.md#admin_user_sessions_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions for a user via POST |
| [**admin_user_tokens_revoke_all**](AdminSessionsApi.md#admin_user_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens for a user |
| [**admin_user_tokens_revoke_post**](AdminSessionsApi.md#admin_user_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens for a user via POST |


## admin_client_tokens_revoke_all

> admin_client_tokens_revoke_all(org_id, client_id)

Revoke all tokens for a client

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Revoke all tokens for a client
  api_instance.admin_client_tokens_revoke_all(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_all: #{e}"
end
```

#### Using the admin_client_tokens_revoke_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_client_tokens_revoke_all_with_http_info(org_id, client_id)

```ruby
begin
  # Revoke all tokens for a client
  data, status_code, headers = api_instance.admin_client_tokens_revoke_all_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_all_with_http_info: #{e}"
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


## admin_client_tokens_revoke_post

> admin_client_tokens_revoke_post(org_id, client_id)

Revoke all tokens for a client via POST

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Revoke all tokens for a client via POST
  api_instance.admin_client_tokens_revoke_post(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_post: #{e}"
end
```

#### Using the admin_client_tokens_revoke_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_client_tokens_revoke_post_with_http_info(org_id, client_id)

```ruby
begin
  # Revoke all tokens for a client via POST
  data, status_code, headers = api_instance.admin_client_tokens_revoke_post_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_post_with_http_info: #{e}"
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


## admin_sessions_count

> admin_sessions_count(org_id)

Get active session count for the tenant

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get active session count for the tenant
  api_instance.admin_sessions_count(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_count: #{e}"
end
```

#### Using the admin_sessions_count_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sessions_count_with_http_info(org_id)

```ruby
begin
  # Get active session count for the tenant
  data, status_code, headers = api_instance.admin_sessions_count_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_count_with_http_info: #{e}"
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


## admin_sessions_list

> admin_sessions_list(org_id)

List active sessions for the tenant

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 

begin
  # List active sessions for the tenant
  api_instance.admin_sessions_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_list: #{e}"
end
```

#### Using the admin_sessions_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sessions_list_with_http_info(org_id)

```ruby
begin
  # List active sessions for the tenant
  data, status_code, headers = api_instance.admin_sessions_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_list_with_http_info: #{e}"
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


## admin_sessions_revoke

> admin_sessions_revoke(org_id, session_id)

Revoke a specific session

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
session_id = 'session_id_example' # String | 

begin
  # Revoke a specific session
  api_instance.admin_sessions_revoke(org_id, session_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke: #{e}"
end
```

#### Using the admin_sessions_revoke_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sessions_revoke_with_http_info(org_id, session_id)

```ruby
begin
  # Revoke a specific session
  data, status_code, headers = api_instance.admin_sessions_revoke_with_http_info(org_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **session_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_sessions_revoke_all

> admin_sessions_revoke_all(org_id)

Revoke all tenant sessions via POST

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 

begin
  # Revoke all tenant sessions via POST
  api_instance.admin_sessions_revoke_all(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke_all: #{e}"
end
```

#### Using the admin_sessions_revoke_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sessions_revoke_all_with_http_info(org_id)

```ruby
begin
  # Revoke all tenant sessions via POST
  data, status_code, headers = api_instance.admin_sessions_revoke_all_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke_all_with_http_info: #{e}"
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


## admin_sessions_stats

> admin_sessions_stats(org_id)

Get session statistics for the tenant

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get session statistics for the tenant
  api_instance.admin_sessions_stats(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_stats: #{e}"
end
```

#### Using the admin_sessions_stats_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sessions_stats_with_http_info(org_id)

```ruby
begin
  # Get session statistics for the tenant
  data, status_code, headers = api_instance.admin_sessions_stats_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_stats_with_http_info: #{e}"
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


## admin_tokens_list

> admin_tokens_list(org_id)

List access tokens for the tenant

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 

begin
  # List access tokens for the tenant
  api_instance.admin_tokens_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_list: #{e}"
end
```

#### Using the admin_tokens_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_tokens_list_with_http_info(org_id)

```ruby
begin
  # List access tokens for the tenant
  data, status_code, headers = api_instance.admin_tokens_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_list_with_http_info: #{e}"
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


## admin_tokens_revoke

> admin_tokens_revoke(org_id, token_id)

Revoke a token

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # Revoke a token
  api_instance.admin_tokens_revoke(org_id, token_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_revoke: #{e}"
end
```

#### Using the admin_tokens_revoke_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_tokens_revoke_with_http_info(org_id, token_id)

```ruby
begin
  # Revoke a token
  data, status_code, headers = api_instance.admin_tokens_revoke_with_http_info(org_id, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_user_sessions_list

> admin_user_sessions_list(org_id, user_id)

Get sessions for a specific user

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Get sessions for a specific user
  api_instance.admin_user_sessions_list(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_list: #{e}"
end
```

#### Using the admin_user_sessions_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_user_sessions_list_with_http_info(org_id, user_id)

```ruby
begin
  # Get sessions for a specific user
  data, status_code, headers = api_instance.admin_user_sessions_list_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_user_sessions_revoke_all

> admin_user_sessions_revoke_all(org_id, user_id)

Revoke all sessions for a user

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Revoke all sessions for a user
  api_instance.admin_user_sessions_revoke_all(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_all: #{e}"
end
```

#### Using the admin_user_sessions_revoke_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_user_sessions_revoke_all_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all sessions for a user
  data, status_code, headers = api_instance.admin_user_sessions_revoke_all_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_user_sessions_revoke_post

> admin_user_sessions_revoke_post(org_id, user_id)

Revoke all sessions for a user via POST

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Revoke all sessions for a user via POST
  api_instance.admin_user_sessions_revoke_post(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_post: #{e}"
end
```

#### Using the admin_user_sessions_revoke_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_user_sessions_revoke_post_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all sessions for a user via POST
  data, status_code, headers = api_instance.admin_user_sessions_revoke_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_user_tokens_revoke_all

> admin_user_tokens_revoke_all(org_id, user_id)

Revoke all tokens for a user

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Revoke all tokens for a user
  api_instance.admin_user_tokens_revoke_all(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_all: #{e}"
end
```

#### Using the admin_user_tokens_revoke_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_user_tokens_revoke_all_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all tokens for a user
  data, status_code, headers = api_instance.admin_user_tokens_revoke_all_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_user_tokens_revoke_post

> admin_user_tokens_revoke_post(org_id, user_id)

Revoke all tokens for a user via POST

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

api_instance = LumoAuthApiClient::AdminSessionsApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Revoke all tokens for a user via POST
  api_instance.admin_user_tokens_revoke_post(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_post: #{e}"
end
```

#### Using the admin_user_tokens_revoke_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_user_tokens_revoke_post_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all tokens for a user via POST
  data, status_code, headers = api_instance.admin_user_tokens_revoke_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

