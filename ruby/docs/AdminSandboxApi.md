# LumoAuthApiClient::AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_sandbox_destroy**](AdminSandboxApi.md#admin_sandbox_destroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller. |
| [**admin_sandbox_list**](AdminSandboxApi.md#admin_sandbox_list) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller&#39;s active sandbox tenants (their own only). |
| [**admin_sandbox_spawn**](AdminSandboxApi.md#admin_sandbox_spawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\&quot;name\&quot;?: \&quot;feature-foo\&quot;, \&quot;ttl_hours\&quot;?: 24} |


## admin_sandbox_destroy

> admin_sandbox_destroy(org_id, sandbox_slug)

POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.

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
  # POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
  api_instance.admin_sandbox_destroy(org_id, sandbox_slug)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_destroy: #{e}"
end
```

#### Using the admin_sandbox_destroy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sandbox_destroy_with_http_info(org_id, sandbox_slug)

```ruby
begin
  # POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
  data, status_code, headers = api_instance.admin_sandbox_destroy_with_http_info(org_id, sandbox_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_sandbox_list

> admin_sandbox_list(org_id)

GET / Lists the caller's active sandbox tenants (their own only).

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
  # GET / Lists the caller's active sandbox tenants (their own only).
  api_instance.admin_sandbox_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_list: #{e}"
end
```

#### Using the admin_sandbox_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sandbox_list_with_http_info(org_id)

```ruby
begin
  # GET / Lists the caller's active sandbox tenants (their own only).
  data, status_code, headers = api_instance.admin_sandbox_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_list_with_http_info: #{e}"
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


## admin_sandbox_spawn

> admin_sandbox_spawn(org_id)

POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}

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
  # POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}
  api_instance.admin_sandbox_spawn(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_spawn: #{e}"
end
```

#### Using the admin_sandbox_spawn_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_sandbox_spawn_with_http_info(org_id)

```ruby
begin
  # POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}
  data, status_code, headers = api_instance.admin_sandbox_spawn_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSandboxApi->admin_sandbox_spawn_with_http_info: #{e}"
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

