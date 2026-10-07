# LumoAuthApiClient::AdminIdentityProvidersApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_social_providers_available**](AdminIdentityProvidersApi.md#admin_social_providers_available) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types |
| [**admin_social_providers_callback_urls**](AdminIdentityProvidersApi.md#admin_social_providers_callback_urls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider |
| [**admin_social_providers_create**](AdminIdentityProvidersApi.md#admin_social_providers_create) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider |
| [**admin_social_providers_delete**](AdminIdentityProvidersApi.md#admin_social_providers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider |
| [**admin_social_providers_disable**](AdminIdentityProvidersApi.md#admin_social_providers_disable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider |
| [**admin_social_providers_enable**](AdminIdentityProvidersApi.md#admin_social_providers_enable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider |
| [**admin_social_providers_get**](AdminIdentityProvidersApi.md#admin_social_providers_get) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider |
| [**admin_social_providers_list**](AdminIdentityProvidersApi.md#admin_social_providers_list) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers |
| [**admin_social_providers_types**](AdminIdentityProvidersApi.md#admin_social_providers_types) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types |
| [**patch_admin_social_providers_update**](AdminIdentityProvidersApi.md#patch_admin_social_providers_update) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider |
| [**put_admin_social_providers_update**](AdminIdentityProvidersApi.md#put_admin_social_providers_update) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider |


## admin_social_providers_available

> <AdminSocialProvidersAvailableResponse> admin_social_providers_available(org_id)

List the available social login provider types

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 

begin
  # List the available social login provider types
  result = api_instance.admin_social_providers_available(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_available: #{e}"
end
```

#### Using the admin_social_providers_available_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersAvailableResponse>, Integer, Hash)> admin_social_providers_available_with_http_info(org_id)

```ruby
begin
  # List the available social login provider types
  data, status_code, headers = api_instance.admin_social_providers_available_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersAvailableResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_available_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_callback_urls

> <AdminSocialProvidersCallbackUrlsResponse> admin_social_providers_callback_urls(org_id)

Get the OAuth callback URL of every configured provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 

begin
  # Get the OAuth callback URL of every configured provider
  result = api_instance.admin_social_providers_callback_urls(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_callback_urls: #{e}"
end
```

#### Using the admin_social_providers_callback_urls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCallbackUrlsResponse>, Integer, Hash)> admin_social_providers_callback_urls_with_http_info(org_id)

```ruby
begin
  # Get the OAuth callback URL of every configured provider
  data, status_code, headers = api_instance.admin_social_providers_callback_urls_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCallbackUrlsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_callback_urls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCallbackUrlsResponse**](AdminSocialProvidersCallbackUrlsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_create

> <AdminSocialProvidersCreateResponse> admin_social_providers_create(org_id)

Create a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a social login provider
  result = api_instance.admin_social_providers_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_create: #{e}"
end
```

#### Using the admin_social_providers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCreateResponse>, Integer, Hash)> admin_social_providers_create_with_http_info(org_id)

```ruby
begin
  # Create a social login provider
  data, status_code, headers = api_instance.admin_social_providers_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_delete

> <MessageResponse> admin_social_providers_delete(org_id, provider_id)

Delete a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Delete a social login provider
  result = api_instance.admin_social_providers_delete(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_delete: #{e}"
end
```

#### Using the admin_social_providers_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_social_providers_delete_with_http_info(org_id, provider_id)

```ruby
begin
  # Delete a social login provider
  data, status_code, headers = api_instance.admin_social_providers_delete_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_disable

> <AdminSocialProvidersCreateResponse> admin_social_providers_disable(org_id, provider_id)

Disable a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Disable a social login provider
  result = api_instance.admin_social_providers_disable(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_disable: #{e}"
end
```

#### Using the admin_social_providers_disable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCreateResponse>, Integer, Hash)> admin_social_providers_disable_with_http_info(org_id, provider_id)

```ruby
begin
  # Disable a social login provider
  data, status_code, headers = api_instance.admin_social_providers_disable_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_disable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_enable

> <AdminSocialProvidersCreateResponse> admin_social_providers_enable(org_id, provider_id)

Enable a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Enable a social login provider
  result = api_instance.admin_social_providers_enable(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_enable: #{e}"
end
```

#### Using the admin_social_providers_enable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCreateResponse>, Integer, Hash)> admin_social_providers_enable_with_http_info(org_id, provider_id)

```ruby
begin
  # Enable a social login provider
  data, status_code, headers = api_instance.admin_social_providers_enable_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_enable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_get

> <AdminSocialProvidersGetResponse> admin_social_providers_get(org_id, provider_id)

Get a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Get a social login provider
  result = api_instance.admin_social_providers_get(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_get: #{e}"
end
```

#### Using the admin_social_providers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersGetResponse>, Integer, Hash)> admin_social_providers_get_with_http_info(org_id, provider_id)

```ruby
begin
  # Get a social login provider
  data, status_code, headers = api_instance.admin_social_providers_get_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersGetResponse**](AdminSocialProvidersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_list

> <AdminSocialProvidersListResponse> admin_social_providers_list(org_id)

List social login providers

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 

begin
  # List social login providers
  result = api_instance.admin_social_providers_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_list: #{e}"
end
```

#### Using the admin_social_providers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersListResponse>, Integer, Hash)> admin_social_providers_list_with_http_info(org_id)

```ruby
begin
  # List social login providers
  data, status_code, headers = api_instance.admin_social_providers_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersListResponse**](AdminSocialProvidersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_social_providers_types

> <AdminSocialProvidersAvailableResponse> admin_social_providers_types(org_id)

List the available social login provider types

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 

begin
  # List the available social login provider types
  result = api_instance.admin_social_providers_types(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_types: #{e}"
end
```

#### Using the admin_social_providers_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersAvailableResponse>, Integer, Hash)> admin_social_providers_types_with_http_info(org_id)

```ruby
begin
  # List the available social login provider types
  data, status_code, headers = api_instance.admin_social_providers_types_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersAvailableResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->admin_social_providers_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_social_providers_update

> <AdminSocialProvidersCreateResponse> patch_admin_social_providers_update(org_id, provider_id)

Update a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Update a social login provider
  result = api_instance.patch_admin_social_providers_update(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->patch_admin_social_providers_update: #{e}"
end
```

#### Using the patch_admin_social_providers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCreateResponse>, Integer, Hash)> patch_admin_social_providers_update_with_http_info(org_id, provider_id)

```ruby
begin
  # Update a social login provider
  data, status_code, headers = api_instance.patch_admin_social_providers_update_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->patch_admin_social_providers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_social_providers_update

> <AdminSocialProvidersCreateResponse> put_admin_social_providers_update(org_id, provider_id)

Create or replace a social login provider

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

api_instance = LumoAuthApiClient::AdminIdentityProvidersApi.new
org_id = 'org_id_example' # String | 
provider_id = 'provider_id_example' # String | 

begin
  # Create or replace a social login provider
  result = api_instance.put_admin_social_providers_update(org_id, provider_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->put_admin_social_providers_update: #{e}"
end
```

#### Using the put_admin_social_providers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSocialProvidersCreateResponse>, Integer, Hash)> put_admin_social_providers_update_with_http_info(org_id, provider_id)

```ruby
begin
  # Create or replace a social login provider
  data, status_code, headers = api_instance.put_admin_social_providers_update_with_http_info(org_id, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSocialProvidersCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminIdentityProvidersApi->put_admin_social_providers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **provider_id** | **String** |  |  |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

