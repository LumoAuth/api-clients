# LumoAuthApiClient::AdminSessionsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_client_tokens_revoke_all**](AdminSessionsApi.md#admin_client_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client |
| [**admin_client_tokens_revoke_post**](AdminSessionsApi.md#admin_client_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias) |
| [**admin_sessions_count**](AdminSessionsApi.md#admin_sessions_count) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count |
| [**admin_sessions_list**](AdminSessionsApi.md#admin_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions |
| [**admin_sessions_revoke**](AdminSessionsApi.md#admin_sessions_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session |
| [**admin_sessions_revoke_all**](AdminSessionsApi.md#admin_sessions_revoke_all) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant |
| [**admin_sessions_stats**](AdminSessionsApi.md#admin_sessions_stats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics |
| [**admin_tokens_list**](AdminSessionsApi.md#admin_tokens_list) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens |
| [**admin_tokens_revoke**](AdminSessionsApi.md#admin_tokens_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token |
| [**admin_user_sessions_list**](AdminSessionsApi.md#admin_user_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions |
| [**admin_user_sessions_revoke_all**](AdminSessionsApi.md#admin_user_sessions_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user |
| [**admin_user_sessions_revoke_post**](AdminSessionsApi.md#admin_user_sessions_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias) |
| [**admin_user_tokens_revoke_all**](AdminSessionsApi.md#admin_user_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user |
| [**admin_user_tokens_revoke_post**](AdminSessionsApi.md#admin_user_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias) |


## admin_client_tokens_revoke_all

> <AdminClientTokensRevokeAllResponse> admin_client_tokens_revoke_all(org_id, client_id)

Revoke all tokens of a client

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
  # Revoke all tokens of a client
  result = api_instance.admin_client_tokens_revoke_all(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_all: #{e}"
end
```

#### Using the admin_client_tokens_revoke_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminClientTokensRevokeAllResponse>, Integer, Hash)> admin_client_tokens_revoke_all_with_http_info(org_id, client_id)

```ruby
begin
  # Revoke all tokens of a client
  data, status_code, headers = api_instance.admin_client_tokens_revoke_all_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminClientTokensRevokeAllResponse>
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

[**AdminClientTokensRevokeAllResponse**](AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_client_tokens_revoke_post

> <AdminUserTokensRevokePostResponse> admin_client_tokens_revoke_post(org_id, client_id)

Revoke all tokens of a client (POST alias)

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
  # Revoke all tokens of a client (POST alias)
  result = api_instance.admin_client_tokens_revoke_post(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_client_tokens_revoke_post: #{e}"
end
```

#### Using the admin_client_tokens_revoke_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserTokensRevokePostResponse>, Integer, Hash)> admin_client_tokens_revoke_post_with_http_info(org_id, client_id)

```ruby
begin
  # Revoke all tokens of a client (POST alias)
  data, status_code, headers = api_instance.admin_client_tokens_revoke_post_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserTokensRevokePostResponse>
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

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sessions_count

> <AdminSessionsCountResponse> admin_sessions_count(org_id)

Active session count

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
  # Active session count
  result = api_instance.admin_sessions_count(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_count: #{e}"
end
```

#### Using the admin_sessions_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSessionsCountResponse>, Integer, Hash)> admin_sessions_count_with_http_info(org_id)

```ruby
begin
  # Active session count
  data, status_code, headers = api_instance.admin_sessions_count_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSessionsCountResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSessionsCountResponse**](AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sessions_list

> <AdminSessionsListResponse> admin_sessions_list(org_id)

List active sessions

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional `userId` filter accepts a user UUID or email.

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
  # List active sessions
  result = api_instance.admin_sessions_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_list: #{e}"
end
```

#### Using the admin_sessions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSessionsListResponse>, Integer, Hash)> admin_sessions_list_with_http_info(org_id)

```ruby
begin
  # List active sessions
  data, status_code, headers = api_instance.admin_sessions_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSessionsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSessionsListResponse**](AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sessions_revoke

> <AdminSessionsRevokeResponse> admin_sessions_revoke(org_id, session_id)

Revoke a session

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
  # Revoke a session
  result = api_instance.admin_sessions_revoke(org_id, session_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke: #{e}"
end
```

#### Using the admin_sessions_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSessionsRevokeResponse>, Integer, Hash)> admin_sessions_revoke_with_http_info(org_id, session_id)

```ruby
begin
  # Revoke a session
  data, status_code, headers = api_instance.admin_sessions_revoke_with_http_info(org_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSessionsRevokeResponse>
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

[**AdminSessionsRevokeResponse**](AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sessions_revoke_all

> <AdminSessionsRevokeAllResponse> admin_sessions_revoke_all(org_id, admin_sessions_revoke_all_request)

Revoke every session in the tenant

Signs out all users. Requires `confirm: true` in the body.

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
admin_sessions_revoke_all_request = LumoAuthApiClient::AdminSessionsRevokeAllRequest.new({confirm: true}) # AdminSessionsRevokeAllRequest | 

begin
  # Revoke every session in the tenant
  result = api_instance.admin_sessions_revoke_all(org_id, admin_sessions_revoke_all_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke_all: #{e}"
end
```

#### Using the admin_sessions_revoke_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSessionsRevokeAllResponse>, Integer, Hash)> admin_sessions_revoke_all_with_http_info(org_id, admin_sessions_revoke_all_request)

```ruby
begin
  # Revoke every session in the tenant
  data, status_code, headers = api_instance.admin_sessions_revoke_all_with_http_info(org_id, admin_sessions_revoke_all_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSessionsRevokeAllResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_revoke_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **admin_sessions_revoke_all_request** | [**AdminSessionsRevokeAllRequest**](AdminSessionsRevokeAllRequest.md) |  |  |

### Return type

[**AdminSessionsRevokeAllResponse**](AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_sessions_stats

> <AdminSessionsStatsResponse> admin_sessions_stats(org_id)

Session statistics

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
  # Session statistics
  result = api_instance.admin_sessions_stats(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_stats: #{e}"
end
```

#### Using the admin_sessions_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSessionsStatsResponse>, Integer, Hash)> admin_sessions_stats_with_http_info(org_id)

```ruby
begin
  # Session statistics
  data, status_code, headers = api_instance.admin_sessions_stats_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSessionsStatsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_sessions_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSessionsStatsResponse**](AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_tokens_list

> <AdminTokensListResponse> admin_tokens_list(org_id)

List access tokens

Paginated OAuth access tokens issued by the tenant's clients. Filters: `revoked` (bool), `clientId`, `userId`.

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
  # List access tokens
  result = api_instance.admin_tokens_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_list: #{e}"
end
```

#### Using the admin_tokens_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminTokensListResponse>, Integer, Hash)> admin_tokens_list_with_http_info(org_id)

```ruby
begin
  # List access tokens
  data, status_code, headers = api_instance.admin_tokens_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminTokensListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminTokensListResponse**](AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_tokens_revoke

> <AdminTokensRevokeResponse> admin_tokens_revoke(org_id, token_id)

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
  result = api_instance.admin_tokens_revoke(org_id, token_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_tokens_revoke: #{e}"
end
```

#### Using the admin_tokens_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminTokensRevokeResponse>, Integer, Hash)> admin_tokens_revoke_with_http_info(org_id, token_id)

```ruby
begin
  # Revoke a token
  data, status_code, headers = api_instance.admin_tokens_revoke_with_http_info(org_id, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminTokensRevokeResponse>
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

[**AdminTokensRevokeResponse**](AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_user_sessions_list

> <AdminUserSessionsListResponse> admin_user_sessions_list(org_id, user_id)

List a user's active sessions

All active sessions of one user (UUID or email), returned as a single page.

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
  # List a user's active sessions
  result = api_instance.admin_user_sessions_list(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_list: #{e}"
end
```

#### Using the admin_user_sessions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserSessionsListResponse>, Integer, Hash)> admin_user_sessions_list_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's active sessions
  data, status_code, headers = api_instance.admin_user_sessions_list_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserSessionsListResponse>
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

[**AdminUserSessionsListResponse**](AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_user_sessions_revoke_all

> <AdminUserSessionsRevokeAllResponse> admin_user_sessions_revoke_all(org_id, user_id)

Revoke all sessions of a user

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
  # Revoke all sessions of a user
  result = api_instance.admin_user_sessions_revoke_all(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_all: #{e}"
end
```

#### Using the admin_user_sessions_revoke_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserSessionsRevokeAllResponse>, Integer, Hash)> admin_user_sessions_revoke_all_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all sessions of a user
  data, status_code, headers = api_instance.admin_user_sessions_revoke_all_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserSessionsRevokeAllResponse>
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

[**AdminUserSessionsRevokeAllResponse**](AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_user_sessions_revoke_post

> <AdminUserSessionsRevokePostResponse> admin_user_sessions_revoke_post(org_id, user_id)

Revoke all sessions of a user (POST alias)

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
  # Revoke all sessions of a user (POST alias)
  result = api_instance.admin_user_sessions_revoke_post(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_sessions_revoke_post: #{e}"
end
```

#### Using the admin_user_sessions_revoke_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserSessionsRevokePostResponse>, Integer, Hash)> admin_user_sessions_revoke_post_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all sessions of a user (POST alias)
  data, status_code, headers = api_instance.admin_user_sessions_revoke_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserSessionsRevokePostResponse>
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

[**AdminUserSessionsRevokePostResponse**](AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_user_tokens_revoke_all

> <AdminUserTokensRevokeAllResponse> admin_user_tokens_revoke_all(org_id, user_id)

Revoke all tokens of a user

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
  # Revoke all tokens of a user
  result = api_instance.admin_user_tokens_revoke_all(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_all: #{e}"
end
```

#### Using the admin_user_tokens_revoke_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserTokensRevokeAllResponse>, Integer, Hash)> admin_user_tokens_revoke_all_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all tokens of a user
  data, status_code, headers = api_instance.admin_user_tokens_revoke_all_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserTokensRevokeAllResponse>
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

[**AdminUserTokensRevokeAllResponse**](AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_user_tokens_revoke_post

> <AdminUserTokensRevokePostResponse> admin_user_tokens_revoke_post(org_id, user_id)

Revoke all tokens of a user (POST alias)

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
  # Revoke all tokens of a user (POST alias)
  result = api_instance.admin_user_tokens_revoke_post(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSessionsApi->admin_user_tokens_revoke_post: #{e}"
end
```

#### Using the admin_user_tokens_revoke_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminUserTokensRevokePostResponse>, Integer, Hash)> admin_user_tokens_revoke_post_with_http_info(org_id, user_id)

```ruby
begin
  # Revoke all tokens of a user (POST alias)
  data, status_code, headers = api_instance.admin_user_tokens_revoke_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminUserTokensRevokePostResponse>
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

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

