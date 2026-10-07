# LumoAuthApiClient::AdminEmailApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_email_templates_delete**](AdminEmailApi.md#admin_email_templates_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used |
| [**admin_email_templates_get**](AdminEmailApi.md#admin_email_templates_get) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default) |
| [**admin_email_templates_list**](AdminEmailApi.md#admin_email_templates_list) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template |
| [**admin_email_templates_preview**](AdminEmailApi.md#admin_email_templates_preview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data |
| [**admin_email_templates_upsert**](AdminEmailApi.md#admin_email_templates_upsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type |
| [**admin_email_templates_variables**](AdminEmailApi.md#admin_email_templates_variables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type |


## admin_email_templates_delete

> <MessageResponse> admin_email_templates_delete(org_id, type)

Remove the custom email template so the built-in default is used

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
  # Remove the custom email template so the built-in default is used
  result = api_instance.admin_email_templates_delete(org_id, type)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_delete: #{e}"
end
```

#### Using the admin_email_templates_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_email_templates_delete_with_http_info(org_id, type)

```ruby
begin
  # Remove the custom email template so the built-in default is used
  data, status_code, headers = api_instance.admin_email_templates_delete_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_email_templates_get

> <EmailTemplate> admin_email_templates_get(org_id, type)

Get an email template (custom or built-in default)

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
  # Get an email template (custom or built-in default)
  result = api_instance.admin_email_templates_get(org_id, type)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_get: #{e}"
end
```

#### Using the admin_email_templates_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailTemplate>, Integer, Hash)> admin_email_templates_get_with_http_info(org_id, type)

```ruby
begin
  # Get an email template (custom or built-in default)
  data, status_code, headers = api_instance.admin_email_templates_get_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailTemplate>
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

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_email_templates_list

> <AdminEmailTemplatesListResponse> admin_email_templates_list(org_id)

List every email template type with its current (custom or built-in) template

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
  # List every email template type with its current (custom or built-in) template
  result = api_instance.admin_email_templates_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_list: #{e}"
end
```

#### Using the admin_email_templates_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminEmailTemplatesListResponse>, Integer, Hash)> admin_email_templates_list_with_http_info(org_id)

```ruby
begin
  # List every email template type with its current (custom or built-in) template
  data, status_code, headers = api_instance.admin_email_templates_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminEmailTemplatesListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminEmailTemplatesListResponse**](AdminEmailTemplatesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_email_templates_preview

> <AdminEmailTemplatesPreviewResponse> admin_email_templates_preview(org_id, type)

Render an email template with sample data

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
  # Render an email template with sample data
  result = api_instance.admin_email_templates_preview(org_id, type)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_preview: #{e}"
end
```

#### Using the admin_email_templates_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminEmailTemplatesPreviewResponse>, Integer, Hash)> admin_email_templates_preview_with_http_info(org_id, type)

```ruby
begin
  # Render an email template with sample data
  data, status_code, headers = api_instance.admin_email_templates_preview_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminEmailTemplatesPreviewResponse>
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

[**AdminEmailTemplatesPreviewResponse**](AdminEmailTemplatesPreviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_email_templates_upsert

> <EmailTemplate> admin_email_templates_upsert(org_id, type)

Create or replace the custom email template for a type

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
  # Create or replace the custom email template for a type
  result = api_instance.admin_email_templates_upsert(org_id, type)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_upsert: #{e}"
end
```

#### Using the admin_email_templates_upsert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailTemplate>, Integer, Hash)> admin_email_templates_upsert_with_http_info(org_id, type)

```ruby
begin
  # Create or replace the custom email template for a type
  data, status_code, headers = api_instance.admin_email_templates_upsert_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailTemplate>
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

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_email_templates_variables

> <AdminEmailTemplatesVariablesResponse> admin_email_templates_variables(org_id, type)

List the placeholders available to an email template type

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
  # List the placeholders available to an email template type
  result = api_instance.admin_email_templates_variables(org_id, type)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminEmailApi->admin_email_templates_variables: #{e}"
end
```

#### Using the admin_email_templates_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminEmailTemplatesVariablesResponse>, Integer, Hash)> admin_email_templates_variables_with_http_info(org_id, type)

```ruby
begin
  # List the placeholders available to an email template type
  data, status_code, headers = api_instance.admin_email_templates_variables_with_http_info(org_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminEmailTemplatesVariablesResponse>
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

[**AdminEmailTemplatesVariablesResponse**](AdminEmailTemplatesVariablesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

