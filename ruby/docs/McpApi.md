# LumoAuthApiClient::McpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_protected_resource_metadata**](McpApi.md#get_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728) |
| [**get_protected_resource_metadata_root**](McpApi.md#get_protected_resource_metadata_root) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728) |
| [**get_server**](McpApi.md#get_server) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server. |
| [**get_server_challenge**](McpApi.md#get_server_challenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge |
| [**list_servers**](McpApi.md#list_servers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant. |
| [**post_server_challenge**](McpApi.md#post_server_challenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST) |


## get_protected_resource_metadata

> <ProtectedResourceMetadata> get_protected_resource_metadata(org_id, server_id)

MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 
server_id = 'server_id_example' # String | 

begin
  # MCP server protected resource metadata (RFC 9728)
  result = api_instance.get_protected_resource_metadata(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata: #{e}"
end
```

#### Using the get_protected_resource_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProtectedResourceMetadata>, Integer, Hash)> get_protected_resource_metadata_with_http_info(org_id, server_id)

```ruby
begin
  # MCP server protected resource metadata (RFC 9728)
  data, status_code, headers = api_instance.get_protected_resource_metadata_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProtectedResourceMetadata>
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

[**ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_protected_resource_metadata_root

> <GetProtectedResourceMetadataRoot200Response> get_protected_resource_metadata_root(org_id)

Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::McpApi.new
org_id = 'org_id_example' # String | 

begin
  # Organization-level protected resource metadata (RFC 9728)
  result = api_instance.get_protected_resource_metadata_root(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata_root: #{e}"
end
```

#### Using the get_protected_resource_metadata_root_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProtectedResourceMetadataRoot200Response>, Integer, Hash)> get_protected_resource_metadata_root_with_http_info(org_id)

```ruby
begin
  # Organization-level protected resource metadata (RFC 9728)
  data, status_code, headers = api_instance.get_protected_resource_metadata_root_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProtectedResourceMetadataRoot200Response>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_protected_resource_metadata_root_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetProtectedResourceMetadataRoot200Response**](GetProtectedResourceMetadataRoot200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

> <GetServerChallengeResponse> get_server_challenge(org_id, server_id)

Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server's protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

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
  # Simulated MCP server authorization challenge
  result = api_instance.get_server_challenge(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->get_server_challenge: #{e}"
end
```

#### Using the get_server_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServerChallengeResponse>, Integer, Hash)> get_server_challenge_with_http_info(org_id, server_id)

```ruby
begin
  # Simulated MCP server authorization challenge
  data, status_code, headers = api_instance.get_server_challenge_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServerChallengeResponse>
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

> <GetServerChallengeResponse> post_server_challenge(org_id, server_id)

Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

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
  # Simulated MCP server authorization challenge (POST)
  result = api_instance.post_server_challenge(org_id, server_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling McpApi->post_server_challenge: #{e}"
end
```

#### Using the post_server_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServerChallengeResponse>, Integer, Hash)> post_server_challenge_with_http_info(org_id, server_id)

```ruby
begin
  # Simulated MCP server authorization challenge (POST)
  data, status_code, headers = api_instance.post_server_challenge_with_http_info(org_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServerChallengeResponse>
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

