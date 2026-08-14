# LumoAuthApiClient::TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_connection_token**](TokenVaultApi.md#get_connection_token) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection. |
| [**list_connections**](TokenVaultApi.md#list_connections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the connections this agent may use, with grant status. No secrets. |


## get_connection_token

> get_connection_token(org_id, connection_id)

Fetch a live third-party access token for a connection.

POST /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token Body (optional): {\"user_id\": \"<uuid or email>\"} for user-delegated grants.

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

begin
  # Fetch a live third-party access token for a connection.
  api_instance.get_connection_token(org_id, connection_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->get_connection_token: #{e}"
end
```

#### Using the get_connection_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_connection_token_with_http_info(org_id, connection_id)

```ruby
begin
  # Fetch a live third-party access token for a connection.
  data, status_code, headers = api_instance.get_connection_token_with_http_info(org_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->get_connection_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **connection_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_connections

> list_connections(org_id)

List the connections this agent may use, with grant status. No secrets.

GET /orgs/{orgId}/api/v1/agents/me/connections

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
  # List the connections this agent may use, with grant status. No secrets.
  api_instance.list_connections(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_connections_with_http_info(org_id)

```ruby
begin
  # List the connections this agent may use, with grant status. No secrets.
  data, status_code, headers = api_instance.list_connections_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling TokenVaultApi->list_connections_with_http_info: #{e}"
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

