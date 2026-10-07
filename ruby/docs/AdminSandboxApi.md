# LumoAuthApiClient::AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_sandbox_destroy**](AdminSandboxApi.md#admin_sandbox_destroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant |
| [**admin_sandbox_list**](AdminSandboxApi.md#admin_sandbox_list) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants |
| [**admin_sandbox_spawn**](AdminSandboxApi.md#admin_sandbox_spawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant |


## admin_sandbox_destroy

> <MessageResponse> admin_sandbox_destroy(org_id, sandbox_slug)

Destroy a sandbox tenant

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

api_instance = LumoAuthApiClient::AdminSandboxApi.new
org_id = 'org_id_example' # String | 
sandbox_slug = 'sandbox_slug_example' # String | 

begin
  # Destroy a sandbox tenant
  result = api_instance.admin_sandbox_destroy(org_id, sandbox_slug)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_destroy: #{e}"
end
```

#### Using the admin_sandbox_destroy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_sandbox_destroy_with_http_info(org_id, sandbox_slug)

```ruby
begin
  # Destroy a sandbox tenant
  data, status_code, headers = api_instance.admin_sandbox_destroy_with_http_info(org_id, sandbox_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **sandbox_slug** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sandbox_list

> <AdminSandboxListResponse> admin_sandbox_list(org_id)

List the caller's sandbox tenants

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

api_instance = LumoAuthApiClient::AdminSandboxApi.new
org_id = 'org_id_example' # String | 

begin
  # List the caller's sandbox tenants
  result = api_instance.admin_sandbox_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_list: #{e}"
end
```

#### Using the admin_sandbox_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSandboxListResponse>, Integer, Hash)> admin_sandbox_list_with_http_info(org_id)

```ruby
begin
  # List the caller's sandbox tenants
  data, status_code, headers = api_instance.admin_sandbox_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSandboxListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_sandbox_spawn

> <AdminSandboxSpawnResponse> admin_sandbox_spawn(org_id, opts)

Spawn a sandbox tenant

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

api_instance = LumoAuthApiClient::AdminSandboxApi.new
org_id = 'org_id_example' # String | 
opts = {
  admin_sandbox_spawn_request: LumoAuthApiClient::AdminSandboxSpawnRequest.new # AdminSandboxSpawnRequest | 
}

begin
  # Spawn a sandbox tenant
  result = api_instance.admin_sandbox_spawn(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_spawn: #{e}"
end
```

#### Using the admin_sandbox_spawn_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSandboxSpawnResponse>, Integer, Hash)> admin_sandbox_spawn_with_http_info(org_id, opts)

```ruby
begin
  # Spawn a sandbox tenant
  data, status_code, headers = api_instance.admin_sandbox_spawn_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSandboxSpawnResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_spawn_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **admin_sandbox_spawn_request** | [**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md) |  | [optional] |

### Return type

[**AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

