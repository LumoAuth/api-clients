# LumoAuthApiClient::AdminOAuthClientsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_client**](AdminOAuthClientsApi.md#create_client) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create a new OAuth client |
| [**delete_client**](AdminOAuthClientsApi.md#delete_client) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client |
| [**disable_client**](AdminOAuthClientsApi.md#disable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable OAuth client |
| [**enable_client**](AdminOAuthClientsApi.md#enable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable OAuth client |
| [**get_client**](AdminOAuthClientsApi.md#get_client) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get a single OAuth client by ID or clientId |
| [**list_client_scopes**](AdminOAuthClientsApi.md#list_client_scopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Get client scopes |
| [**list_clients**](AdminOAuthClientsApi.md#list_clients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List all OAuth clients in the tenant |
| [**patch_client**](AdminOAuthClientsApi.md#patch_client) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an existing OAuth client |
| [**rotate_client_secret**](AdminOAuthClientsApi.md#rotate_client_secret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate client secret |
| [**set_client_scopes**](AdminOAuthClientsApi.md#set_client_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Set client scopes |
| [**update_client**](AdminOAuthClientsApi.md#update_client) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an existing OAuth client |


## create_client

> create_client(org_id)

Create a new OAuth client

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
  # Create a new OAuth client
  api_instance.create_client(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->create_client: #{e}"
end
```

#### Using the create_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_client_with_http_info(org_id)

```ruby
begin
  # Create a new OAuth client
  data, status_code, headers = api_instance.create_client_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->create_client_with_http_info: #{e}"
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


## delete_client

> delete_client(org_id, client_id)

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
  api_instance.delete_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_client_with_http_info(org_id, client_id)

```ruby
begin
  # Delete an OAuth client
  data, status_code, headers = api_instance.delete_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disable_client

> disable_client(org_id, client_id)

Disable OAuth client

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
  # Disable OAuth client
  api_instance.disable_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->disable_client: #{e}"
end
```

#### Using the disable_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_client_with_http_info(org_id, client_id)

```ruby
begin
  # Disable OAuth client
  data, status_code, headers = api_instance.disable_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enable_client

> enable_client(org_id, client_id)

Enable OAuth client

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
  # Enable OAuth client
  api_instance.enable_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->enable_client: #{e}"
end
```

#### Using the enable_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> enable_client_with_http_info(org_id, client_id)

```ruby
begin
  # Enable OAuth client
  data, status_code, headers = api_instance.enable_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_client

> get_client(org_id, client_id)

Get a single OAuth client by ID or clientId

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
  # Get a single OAuth client by ID or clientId
  api_instance.get_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_client_with_http_info(org_id, client_id)

```ruby
begin
  # Get a single OAuth client by ID or clientId
  data, status_code, headers = api_instance.get_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_client_scopes

> list_client_scopes(org_id, client_id)

Get client scopes

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
  # Get client scopes
  api_instance.list_client_scopes(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_client_scopes: #{e}"
end
```

#### Using the list_client_scopes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_client_scopes_with_http_info(org_id, client_id)

```ruby
begin
  # Get client scopes
  data, status_code, headers = api_instance.list_client_scopes_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_clients

> list_clients(org_id)

List all OAuth clients in the tenant

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
  # List all OAuth clients in the tenant
  api_instance.list_clients(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_clients: #{e}"
end
```

#### Using the list_clients_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_clients_with_http_info(org_id)

```ruby
begin
  # List all OAuth clients in the tenant
  data, status_code, headers = api_instance.list_clients_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->list_clients_with_http_info: #{e}"
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


## patch_client

> patch_client(org_id, client_id)

Update an existing OAuth client

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
  # Update an existing OAuth client
  api_instance.patch_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->patch_client: #{e}"
end
```

#### Using the patch_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_client_with_http_info(org_id, client_id)

```ruby
begin
  # Update an existing OAuth client
  data, status_code, headers = api_instance.patch_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## rotate_client_secret

> rotate_client_secret(org_id, client_id)

Rotate client secret

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
  # Rotate client secret
  api_instance.rotate_client_secret(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->rotate_client_secret: #{e}"
end
```

#### Using the rotate_client_secret_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> rotate_client_secret_with_http_info(org_id, client_id)

```ruby
begin
  # Rotate client secret
  data, status_code, headers = api_instance.rotate_client_secret_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_client_scopes

> set_client_scopes(org_id, client_id)

Set client scopes

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
  # Set client scopes
  api_instance.set_client_scopes(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->set_client_scopes: #{e}"
end
```

#### Using the set_client_scopes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_client_scopes_with_http_info(org_id, client_id)

```ruby
begin
  # Set client scopes
  data, status_code, headers = api_instance.set_client_scopes_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_client

> update_client(org_id, client_id)

Update an existing OAuth client

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
  # Update an existing OAuth client
  api_instance.update_client(org_id, client_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOAuthClientsApi->update_client: #{e}"
end
```

#### Using the update_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_client_with_http_info(org_id, client_id)

```ruby
begin
  # Update an existing OAuth client
  data, status_code, headers = api_instance.update_client_with_http_info(org_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

