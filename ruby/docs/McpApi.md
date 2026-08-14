# LumoAuthApiClient::McpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_protected_resource_metadata**](McpApi.md#get_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | OAuth 2.0 Protected Resource Metadata (RFC 9728) |
| [**get_protected_resource_metadata_root**](McpApi.md#get_protected_resource_metadata_root) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Root-level Protected Resource Metadata |
| [**get_server**](McpApi.md#get_server) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server. |
| [**get_server_challenge**](McpApi.md#get_server_challenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint. |
| [**list_servers**](McpApi.md#list_servers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant. |
| [**post_server_challenge**](McpApi.md#post_server_challenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint. |


## get_protected_resource_metadata

> get_protected_resource_metadata(org_id, server_id)

OAuth 2.0 Protected Resource Metadata (RFC 9728)

Well-known endpoint for MCP servers with path-specific metadata. Example: /.well-known/oauth-protected-resource/mcp/{serverId}  MCP clients MUST support this discovery mechanism per the MCP Authorization spec.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # OAuth 2.0 Protected Resource Metadata (RFC 9728)
  api_instance.get_protected_resource_metadata(org_id, server_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata: #{e}"
end
```

#### Using the get_protected_resource_metadata_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_protected_resource_metadata_with_http_info(org_id, server_id)

```ruby
begin
  # OAuth 2.0 Protected Resource Metadata (RFC 9728)
  data, status_code, headers = api_instance.get_protected_resource_metadata_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_protected_resource_metadata_root

> get_protected_resource_metadata_root(org_id)

Root-level Protected Resource Metadata

Fallback well-known endpoint per RFC 9728 when no path-specific metadata exists. Returns metadata for the first active MCP server, or a list of available servers.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 

begin
  # Root-level Protected Resource Metadata
  api_instance.get_protected_resource_metadata_root(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata_root: #{e}"
end
```

#### Using the get_protected_resource_metadata_root_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_protected_resource_metadata_root_with_http_info(org_id)

```ruby
begin
  # Root-level Protected Resource Metadata
  data, status_code, headers = api_instance.get_protected_resource_metadata_root_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata_root_with_http_info: #{e}"
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


## get_server

> <GetServerResponse> get_server(org_id, server_id)

REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

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

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # REST API: Get a specific MCP server.
  result = api_instance.get_server(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_server: #{e}"
end
```

#### Using the get_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServerResponse>, Integer, Hash)> get_server_with_http_info(org_id, server_id)

```ruby
begin
  # REST API: Get a specific MCP server.
  data, status_code, headers = api_instance.get_server_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServerResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

[**GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_server_challenge

> get_server_challenge(org_id, server_id)

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # Simulated MCP Server 401 challenge endpoint.
  api_instance.get_server_challenge(org_id, server_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_server_challenge: #{e}"
end
```

#### Using the get_server_challenge_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_server_challenge_with_http_info(org_id, server_id)

```ruby
begin
  # Simulated MCP Server 401 challenge endpoint.
  data, status_code, headers = api_instance.get_server_challenge_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_server_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_servers

> <ListServersResponse> list_servers(org_id)

REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

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

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 

begin
  # REST API: List MCP servers for a tenant.
  result = api_instance.list_servers(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->list_servers: #{e}"
end
```

#### Using the list_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListServersResponse>, Integer, Hash)> list_servers_with_http_info(org_id)

```ruby
begin
  # REST API: List MCP servers for a tenant.
  data, status_code, headers = api_instance.list_servers_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListServersResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->list_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListServersResponse**](ListServersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_server_challenge

> post_server_challenge(org_id, server_id)

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # Simulated MCP Server 401 challenge endpoint.
  api_instance.post_server_challenge(org_id, server_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->post_server_challenge: #{e}"
end
```

#### Using the post_server_challenge_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_server_challenge_with_http_info(org_id, server_id)

```ruby
begin
  # Simulated MCP Server 401 challenge endpoint.
  data, status_code, headers = api_instance.post_server_challenge_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->post_server_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **server_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

