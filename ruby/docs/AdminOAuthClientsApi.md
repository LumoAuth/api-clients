# LumoAuthApiClient::AdminOAuthClientsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_client**](AdminOAuthClientsApi.md#create_client) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client |
| [**delete_client**](AdminOAuthClientsApi.md#delete_client) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client |
| [**disable_client**](AdminOAuthClientsApi.md#disable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client |
| [**enable_client**](AdminOAuthClientsApi.md#enable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client |
| [**get_client**](AdminOAuthClientsApi.md#get_client) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client |
| [**list_client_scopes**](AdminOAuthClientsApi.md#list_client_scopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client |
| [**list_clients**](AdminOAuthClientsApi.md#list_clients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients |
| [**patch_client**](AdminOAuthClientsApi.md#patch_client) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client |
| [**rotate_client_secret**](AdminOAuthClientsApi.md#rotate_client_secret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret |
| [**set_client_scopes**](AdminOAuthClientsApi.md#set_client_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client |
| [**update_client**](AdminOAuthClientsApi.md#update_client) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client |


## create_client

> <CreateClientResponse> create_client(org_id)

Create an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 

begin
  # Create an OAuth client
  result = api_instance.create_client(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->create_client: #{e}"
end
```

#### Using the create_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateClientResponse>, Integer, Hash)> create_client_with_http_info(org_id)

```ruby
begin
  # Create an OAuth client
  data, status_code, headers = api_instance.create_client_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->create_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**CreateClientResponse**](CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_client

> <MessageResponse> delete_client(org_id, client_id)

Delete an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Delete an OAuth client
  result = api_instance.delete_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_client_with_http_info(org_id, client_id)

```ruby
begin
  # Delete an OAuth client
  data, status_code, headers = api_instance.delete_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->delete_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_client

> <UpdateClientResponse> disable_client(org_id, client_id)

Disable an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Disable an OAuth client
  result = api_instance.disable_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->disable_client: #{e}"
end
```

#### Using the disable_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateClientResponse>, Integer, Hash)> disable_client_with_http_info(org_id, client_id)

```ruby
begin
  # Disable an OAuth client
  data, status_code, headers = api_instance.disable_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->disable_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_client

> <UpdateClientResponse> enable_client(org_id, client_id)

Enable an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Enable an OAuth client
  result = api_instance.enable_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->enable_client: #{e}"
end
```

#### Using the enable_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateClientResponse>, Integer, Hash)> enable_client_with_http_info(org_id, client_id)

```ruby
begin
  # Enable an OAuth client
  data, status_code, headers = api_instance.enable_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->enable_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client

> <GetClientResponse> get_client(org_id, client_id)

Get an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Get an OAuth client
  result = api_instance.get_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClientResponse>, Integer, Hash)> get_client_with_http_info(org_id, client_id)

```ruby
begin
  # Get an OAuth client
  data, status_code, headers = api_instance.get_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**GetClientResponse**](GetClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_client_scopes

> <ListClientScopesResponse> list_client_scopes(org_id, client_id)

List the scopes granted to an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # List the scopes granted to an OAuth client
  result = api_instance.list_client_scopes(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_client_scopes: #{e}"
end
```

#### Using the list_client_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListClientScopesResponse>, Integer, Hash)> list_client_scopes_with_http_info(org_id, client_id)

```ruby
begin
  # List the scopes granted to an OAuth client
  data, status_code, headers = api_instance.list_client_scopes_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListClientScopesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_client_scopes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**ListClientScopesResponse**](ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_clients

> <ListClientsResponse> list_clients(org_id)

List OAuth clients

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 

begin
  # List OAuth clients
  result = api_instance.list_clients(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_clients: #{e}"
end
```

#### Using the list_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListClientsResponse>, Integer, Hash)> list_clients_with_http_info(org_id)

```ruby
begin
  # List OAuth clients
  data, status_code, headers = api_instance.list_clients_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListClientsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListClientsResponse**](ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_client

> <UpdateClientResponse> patch_client(org_id, client_id)

Update an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Update an OAuth client
  result = api_instance.patch_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->patch_client: #{e}"
end
```

#### Using the patch_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateClientResponse>, Integer, Hash)> patch_client_with_http_info(org_id, client_id)

```ruby
begin
  # Update an OAuth client
  data, status_code, headers = api_instance.patch_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->patch_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_client_secret

> <RotateClientSecretResponse> rotate_client_secret(org_id, client_id)

Rotate an OAuth client secret

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Rotate an OAuth client secret
  result = api_instance.rotate_client_secret(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->rotate_client_secret: #{e}"
end
```

#### Using the rotate_client_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RotateClientSecretResponse>, Integer, Hash)> rotate_client_secret_with_http_info(org_id, client_id)

```ruby
begin
  # Rotate an OAuth client secret
  data, status_code, headers = api_instance.rotate_client_secret_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RotateClientSecretResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->rotate_client_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**RotateClientSecretResponse**](RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_client_scopes

> <SetClientScopesResponse> set_client_scopes(org_id, client_id)

Replace the scopes granted to an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Replace the scopes granted to an OAuth client
  result = api_instance.set_client_scopes(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->set_client_scopes: #{e}"
end
```

#### Using the set_client_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetClientScopesResponse>, Integer, Hash)> set_client_scopes_with_http_info(org_id, client_id)

```ruby
begin
  # Replace the scopes granted to an OAuth client
  data, status_code, headers = api_instance.set_client_scopes_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetClientScopesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->set_client_scopes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**SetClientScopesResponse**](SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_client

> <UpdateClientResponse> update_client(org_id, client_id)

Replace an OAuth client

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

api_instance = LumoAuthApiClient::AdminOAuthClientsApi.new
org_id = 'org_id_example' # String | 
client_id = 'client_id_example' # String | 

begin
  # Replace an OAuth client
  result = api_instance.update_client(org_id, client_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->update_client: #{e}"
end
```

#### Using the update_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateClientResponse>, Integer, Hash)> update_client_with_http_info(org_id, client_id)

```ruby
begin
  # Replace an OAuth client
  data, status_code, headers = api_instance.update_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateClientResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->update_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **client_id** | **String** |  |  |

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

