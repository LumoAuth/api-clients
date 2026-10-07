# LumoAuthApiClient::TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_connection_token**](TokenVaultApi.md#get_connection_token) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection |
| [**list_connections**](TokenVaultApi.md#list_connections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use |


## get_connection_token

> <GetConnectionTokenResponse> get_connection_token(org_id, connection_id, opts)

Fetch a live third-party access token for a connection

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {\"user_id\": \"<uuid or email>\"} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

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

api_instance = LumoAuthApiClient::TokenVaultApi.new
org_id = 'org_id_example' # String | 
connection_id = 'connection_id_example' # String | 
opts = {
  get_connection_token_request: LumoAuthApiClient::GetConnectionTokenRequest.new # GetConnectionTokenRequest | 
}

begin
  # Fetch a live third-party access token for a connection
  result = api_instance.get_connection_token(org_id, connection_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->get_connection_token: #{e}"
end
```

#### Using the get_connection_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionTokenResponse>, Integer, Hash)> get_connection_token_with_http_info(org_id, connection_id, opts)

```ruby
begin
  # Fetch a live third-party access token for a connection
  data, status_code, headers = api_instance.get_connection_token_with_http_info(org_id, connection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->get_connection_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **connection_id** | **String** |  |  |
| **get_connection_token_request** | [**GetConnectionTokenRequest**](GetConnectionTokenRequest.md) |  | [optional] |

### Return type

[**GetConnectionTokenResponse**](GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_connections

> <ListConnectionsResponse> list_connections(org_id)

List the outbound connections this agent may use

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

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

api_instance = LumoAuthApiClient::TokenVaultApi.new
org_id = 'org_id_example' # String | 

begin
  # List the outbound connections this agent may use
  result = api_instance.list_connections(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionsResponse>, Integer, Hash)> list_connections_with_http_info(org_id)

```ruby
begin
  # List the outbound connections this agent may use
  data, status_code, headers = api_instance.list_connections_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->list_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListConnectionsResponse**](ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

