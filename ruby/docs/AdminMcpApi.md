# LumoAuthApiClient::AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_mcp_servers_create**](AdminMcpApi.md#admin_mcp_servers_create) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server |
| [**admin_mcp_servers_delete**](AdminMcpApi.md#admin_mcp_servers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server |
| [**admin_mcp_servers_get**](AdminMcpApi.md#admin_mcp_servers_get) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server |
| [**admin_mcp_servers_grants_list**](AdminMcpApi.md#admin_mcp_servers_grants_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server |
| [**admin_mcp_servers_grants_remove**](AdminMcpApi.md#admin_mcp_servers_grants_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server |
| [**admin_mcp_servers_grants_set**](AdminMcpApi.md#admin_mcp_servers_grants_set) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call |
| [**admin_mcp_servers_list**](AdminMcpApi.md#admin_mcp_servers_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers |
| [**patch_admin_mcp_servers_update**](AdminMcpApi.md#patch_admin_mcp_servers_update) | **PATCH** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server |
| [**put_admin_mcp_servers_update**](AdminMcpApi.md#put_admin_mcp_servers_update) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server (same as PATCH: only the fields that are sent change) |


## admin_mcp_servers_create

> <AdminMcpServersCreateResponse> admin_mcp_servers_create(org_id, mcp_server_write)

Register an MCP server

The `resource_uri` is stored and returned in canonical form: lower-case scheme and host, no default port, no trailing slash, no dot segments. Token requests match it in any equivalent spelling.

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
mcp_server_write = LumoAuthApiClient::McpServerWrite.new # McpServerWrite | 

begin
  # Register an MCP server
  result = api_instance.admin_mcp_servers_create(org_id, mcp_server_write)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_create: #{e}"
end
```

#### Using the admin_mcp_servers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersCreateResponse>, Integer, Hash)> admin_mcp_servers_create_with_http_info(org_id, mcp_server_write)

```ruby
begin
  # Register an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_create_with_http_info(org_id, mcp_server_write)
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
| **mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  |  |

### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
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


## admin_mcp_servers_grants_list

> <AdminMcpServersGrantsListResponse> admin_mcp_servers_grants_list(org_id, server_id, opts)

List the agents allowed to call tools of an MCP server

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
opts = {
  agent_id: 'agent_id_example' # String | Only the grants of this agent (agentId or numeric id).
}

begin
  # List the agents allowed to call tools of an MCP server
  result = api_instance.admin_mcp_servers_grants_list(org_id, server_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_list: #{e}"
end
```

#### Using the admin_mcp_servers_grants_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersGrantsListResponse>, Integer, Hash)> admin_mcp_servers_grants_list_with_http_info(org_id, server_id, opts)

```ruby
begin
  # List the agents allowed to call tools of an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_grants_list_with_http_info(org_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersGrantsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |
| **agent_id** | **String** | Only the grants of this agent (agentId or numeric id). | [optional] |

### Return type

[**AdminMcpServersGrantsListResponse**](AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_mcp_servers_grants_remove

> <AdminMcpServersGrantsRemoveResponse> admin_mcp_servers_grants_remove(org_id, server_id, agent_id)

Remove every grant of an agent on an MCP server

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
agent_id = 'agent_id_example' # String | 

begin
  # Remove every grant of an agent on an MCP server
  result = api_instance.admin_mcp_servers_grants_remove(org_id, server_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_remove: #{e}"
end
```

#### Using the admin_mcp_servers_grants_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersGrantsRemoveResponse>, Integer, Hash)> admin_mcp_servers_grants_remove_with_http_info(org_id, server_id, agent_id)

```ruby
begin
  # Remove every grant of an agent on an MCP server
  data, status_code, headers = api_instance.admin_mcp_servers_grants_remove_with_http_info(org_id, server_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersGrantsRemoveResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminMcpServersGrantsRemoveResponse**](AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_mcp_servers_grants_set

> <AdminMcpServersGrantsSetResponse> admin_mcp_servers_grants_set(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)

Set the tools of an MCP server that an agent may call

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
agent_id = 'agent_id_example' # String | 
admin_mcp_servers_grants_set_request = LumoAuthApiClient::AdminMcpServersGrantsSetRequest.new # AdminMcpServersGrantsSetRequest | 

begin
  # Set the tools of an MCP server that an agent may call
  result = api_instance.admin_mcp_servers_grants_set(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_set: #{e}"
end
```

#### Using the admin_mcp_servers_grants_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersGrantsSetResponse>, Integer, Hash)> admin_mcp_servers_grants_set_with_http_info(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)

```ruby
begin
  # Set the tools of an MCP server that an agent may call
  data, status_code, headers = api_instance.admin_mcp_servers_grants_set_with_http_info(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersGrantsSetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->admin_mcp_servers_grants_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **admin_mcp_servers_grants_set_request** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md) |  |  |

### Return type

[**AdminMcpServersGrantsSetResponse**](AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
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


## patch_admin_mcp_servers_update

> <AdminMcpServersCreateResponse> patch_admin_mcp_servers_update(org_id, server_id, mcp_server_write)

Update an MCP server

Only the fields that are sent change; each is judged as on create. `resource_uri` cannot be changed (400): register a new server for another address. Changes apply to the next token request.

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
mcp_server_write = LumoAuthApiClient::McpServerWrite.new # McpServerWrite | 

begin
  # Update an MCP server
  result = api_instance.patch_admin_mcp_servers_update(org_id, server_id, mcp_server_write)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->patch_admin_mcp_servers_update: #{e}"
end
```

#### Using the patch_admin_mcp_servers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersCreateResponse>, Integer, Hash)> patch_admin_mcp_servers_update_with_http_info(org_id, server_id, mcp_server_write)

```ruby
begin
  # Update an MCP server
  data, status_code, headers = api_instance.patch_admin_mcp_servers_update_with_http_info(org_id, server_id, mcp_server_write)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->patch_admin_mcp_servers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |
| **mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  |  |

### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_admin_mcp_servers_update

> <AdminMcpServersCreateResponse> put_admin_mcp_servers_update(org_id, server_id, mcp_server_write)

Update an MCP server (same as PATCH: only the fields that are sent change)

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
mcp_server_write = LumoAuthApiClient::McpServerWrite.new # McpServerWrite | 

begin
  # Update an MCP server (same as PATCH: only the fields that are sent change)
  result = api_instance.put_admin_mcp_servers_update(org_id, server_id, mcp_server_write)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->put_admin_mcp_servers_update: #{e}"
end
```

#### Using the put_admin_mcp_servers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminMcpServersCreateResponse>, Integer, Hash)> put_admin_mcp_servers_update_with_http_info(org_id, server_id, mcp_server_write)

```ruby
begin
  # Update an MCP server (same as PATCH: only the fields that are sent change)
  data, status_code, headers = api_instance.put_admin_mcp_servers_update_with_http_info(org_id, server_id, mcp_server_write)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminMcpServersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMcpApi->put_admin_mcp_servers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |
| **mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  |  |

### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

