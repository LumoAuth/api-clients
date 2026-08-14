# LumoAuthApiClient::AdminEmailApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_email_templates_delete**](AdminEmailApi.md#admin_email_templates_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} |  |
| [**admin_email_templates_get**](AdminEmailApi.md#admin_email_templates_get) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} |  |
| [**admin_email_templates_list**](AdminEmailApi.md#admin_email_templates_list) | **GET** /orgs/{orgId}/api/v1/admin/email-templates |  |
| [**admin_email_templates_preview**](AdminEmailApi.md#admin_email_templates_preview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview |  |
| [**admin_email_templates_upsert**](AdminEmailApi.md#admin_email_templates_upsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} |  |
| [**admin_email_templates_variables**](AdminEmailApi.md#admin_email_templates_variables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables |  |


## admin_email_templates_delete

> admin_email_templates_delete(org_id, type)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 
type = 'type_example' # String | 

begin
  
  api_instance.admin_email_templates_delete(org_id, type)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_delete: #{e}"
end
```

#### Using the admin_email_templates_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_delete_with_http_info(org_id, type)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_delete_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_email_templates_get

> admin_email_templates_get(org_id, type)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 
type = 'type_example' # String | 

begin
  
  api_instance.admin_email_templates_get(org_id, type)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_get: #{e}"
end
```

#### Using the admin_email_templates_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_get_with_http_info(org_id, type)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_get_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_email_templates_list

> admin_email_templates_list(org_id)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.admin_email_templates_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_list: #{e}"
end
```

#### Using the admin_email_templates_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_list_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_list_with_http_info: #{e}"
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


## admin_email_templates_preview

> admin_email_templates_preview(org_id, type)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 
type = 'type_example' # String | 

begin
  
  api_instance.admin_email_templates_preview(org_id, type)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_preview: #{e}"
end
```

#### Using the admin_email_templates_preview_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_preview_with_http_info(org_id, type)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_preview_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_email_templates_upsert

> admin_email_templates_upsert(org_id, type)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 
type = 'type_example' # String | 

begin
  
  api_instance.admin_email_templates_upsert(org_id, type)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_upsert: #{e}"
end
```

#### Using the admin_email_templates_upsert_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_upsert_with_http_info(org_id, type)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_upsert_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_upsert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_email_templates_variables

> admin_email_templates_variables(org_id, type)



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

api_instance = LumoAuthApiClient::AdminEmailApi.new
org_id = 'org_id_example' # String | 
type = 'type_example' # String | 

begin
  
  api_instance.admin_email_templates_variables(org_id, type)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_variables: #{e}"
end
```

#### Using the admin_email_templates_variables_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_email_templates_variables_with_http_info(org_id, type)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_email_templates_variables_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

