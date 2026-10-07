# LumoAuthApiClient::AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_mcp_servers_create**](AdminMcpApi.md#admin_mcp_servers_create) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server |
| [**admin_mcp_servers_delete**](AdminMcpApi.md#admin_mcp_servers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server |
| [**admin_mcp_servers_get**](AdminMcpApi.md#admin_mcp_servers_get) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server |
| [**admin_mcp_servers_list**](AdminMcpApi.md#admin_mcp_servers_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers |


## admin_mcp_servers_create

> <AdminMcpServersCreateResponse> admin_mcp_servers_create(org_id)

Register an MCP server

Body: name (required) — display name resource_uri (required) — RFC 8707 canonical URI; must be http(s)://, no fragment endpoint_url (optional) — actual MCP endpoint description (optional) scopes_supported (optional) — array OR space/comma-separated string transport (optional) — defaults to \"http_streamable\" auth_mode (optional) — defaults to \"oauth\" token_lifetime (optional, default 3600) — clamped to [60, 86400] allowed_client_ids (optional) — array of this organization's OAuth client ids;     unknown ids are a 422 (never persisted as policy) require_pkce (optional, default true) require_resource_param (optional, default true) require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only

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

api_instance = LumoAuthApiClient::AdminMcpApi.new
org_id = 'org_id_example' # String | 

begin
  # Register an MCP server
  result = api_instance.admin_mcp_servers_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_create: #{e}"
end
```

#### Using the admin_mcp_servers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersCreateResponse>, Integer, Hash)> admin_mcp_servers_create_with_http_info(org_id)

```ruby
begin
  # Register an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_mcp_servers_delete

> <MessageResponse> admin_mcp_servers_delete(org_id, server_id)

Delete an MCP server

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

api_instance = LumoAuthApiClient::AdminMcpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # Delete an MCP server
  result = api_instance.admin_mcp_servers_delete(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_delete: #{e}"
end
```

#### Using the admin_mcp_servers_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_mcp_servers_delete_with_http_info(org_id, server_id)

```ruby
begin
  # Delete an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_delete_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_mcp_servers_get

> <AdminMcpServersGetResponse> admin_mcp_servers_get(org_id, server_id)

Get an MCP server

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

api_instance = LumoAuthApiClient::AdminMcpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # Get an MCP server
  result = api_instance.admin_mcp_servers_get(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_get: #{e}"
end
```

#### Using the admin_mcp_servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersGetResponse>, Integer, Hash)> admin_mcp_servers_get_with_http_info(org_id, server_id)

```ruby
begin
  # Get an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_get_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

[**AdminMcpServersGetResponse**](AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_mcp_servers_list

> <AdminMcpServersListResponse> admin_mcp_servers_list(org_id)

List MCP servers

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

api_instance = LumoAuthApiClient::AdminMcpApi.new
org_id = 'org_id_example' # String | 

begin
  # List MCP servers
  result = api_instance.admin_mcp_servers_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_list: #{e}"
end
```

#### Using the admin_mcp_servers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersListResponse>, Integer, Hash)> admin_mcp_servers_list_with_http_info(org_id)

```ruby
begin
  # List MCP servers
  data, status_code, headers = api_instance.admin_mcp_servers_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminMcpServersListResponse**](AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

