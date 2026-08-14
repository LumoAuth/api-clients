# LumoAuthApiClient::AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_audit_logs_actions**](AdminAuditLogsApi.md#admin_audit_logs_actions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List available audit action types for this tenant |
| [**admin_audit_logs_export**](AdminAuditLogsApi.md#admin_audit_logs_export) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV or JSON |
| [**admin_audit_logs_get**](AdminAuditLogsApi.md#admin_audit_logs_get) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get a single audit log entry |
| [**admin_audit_logs_list**](AdminAuditLogsApi.md#admin_audit_logs_list) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit logs for the tenant |
| [**admin_audit_logs_retention**](AdminAuditLogsApi.md#admin_audit_logs_retention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings |
| [**admin_audit_logs_stats**](AdminAuditLogsApi.md#admin_audit_logs_stats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Get audit log statistics |
| [**patch_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#patch_admin_audit_logs_retention_update) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |
| [**put_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#put_admin_audit_logs_retention_update) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |


## admin_audit_logs_actions

> admin_audit_logs_actions(org_id)

List available audit action types for this tenant

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # List available audit action types for this tenant
  api_instance.admin_audit_logs_actions(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_actions: #{e}"
end
```

#### Using the admin_audit_logs_actions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_actions_with_http_info(org_id)

```ruby
begin
  # List available audit action types for this tenant
  data, status_code, headers = api_instance.admin_audit_logs_actions_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_actions_with_http_info: #{e}"
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


## admin_audit_logs_export

> admin_audit_logs_export(org_id)

Export audit logs as CSV or JSON

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # Export audit logs as CSV or JSON
  api_instance.admin_audit_logs_export(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_export: #{e}"
end
```

#### Using the admin_audit_logs_export_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_export_with_http_info(org_id)

```ruby
begin
  # Export audit logs as CSV or JSON
  data, status_code, headers = api_instance.admin_audit_logs_export_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_export_with_http_info: #{e}"
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


## admin_audit_logs_get

> admin_audit_logs_get(org_id, log_id)

Get a single audit log entry

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 
log_id = 'log_id_example' # String | 

begin
  # Get a single audit log entry
  api_instance.admin_audit_logs_get(org_id, log_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_get: #{e}"
end
```

#### Using the admin_audit_logs_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_get_with_http_info(org_id, log_id)

```ruby
begin
  # Get a single audit log entry
  data, status_code, headers = api_instance.admin_audit_logs_get_with_http_info(org_id, log_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **log_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_audit_logs_list

> admin_audit_logs_list(org_id)

List audit logs for the tenant

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # List audit logs for the tenant
  api_instance.admin_audit_logs_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_list: #{e}"
end
```

#### Using the admin_audit_logs_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_list_with_http_info(org_id)

```ruby
begin
  # List audit logs for the tenant
  data, status_code, headers = api_instance.admin_audit_logs_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_list_with_http_info: #{e}"
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


## admin_audit_logs_retention

> admin_audit_logs_retention(org_id)

Get audit log retention settings

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get audit log retention settings
  api_instance.admin_audit_logs_retention(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_retention: #{e}"
end
```

#### Using the admin_audit_logs_retention_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_retention_with_http_info(org_id)

```ruby
begin
  # Get audit log retention settings
  data, status_code, headers = api_instance.admin_audit_logs_retention_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_retention_with_http_info: #{e}"
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


## admin_audit_logs_stats

> admin_audit_logs_stats(org_id)

Get audit log statistics

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get audit log statistics
  api_instance.admin_audit_logs_stats(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_stats: #{e}"
end
```

#### Using the admin_audit_logs_stats_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_audit_logs_stats_with_http_info(org_id)

```ruby
begin
  # Get audit log statistics
  data, status_code, headers = api_instance.admin_audit_logs_stats_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_stats_with_http_info: #{e}"
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


## patch_admin_audit_logs_retention_update

> patch_admin_audit_logs_retention_update(org_id)

Update audit log retention settings

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update audit log retention settings
  api_instance.patch_admin_audit_logs_retention_update(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->patch_admin_audit_logs_retention_update: #{e}"
end
```

#### Using the patch_admin_audit_logs_retention_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_audit_logs_retention_update_with_http_info(org_id)

```ruby
begin
  # Update audit log retention settings
  data, status_code, headers = api_instance.patch_admin_audit_logs_retention_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->patch_admin_audit_logs_retention_update_with_http_info: #{e}"
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


## put_admin_audit_logs_retention_update

> put_admin_audit_logs_retention_update(org_id)

Update audit log retention settings

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

api_instance = LumoAuthApiClient::AdminAuditLogsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update audit log retention settings
  api_instance.put_admin_audit_logs_retention_update(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->put_admin_audit_logs_retention_update: #{e}"
end
```

#### Using the put_admin_audit_logs_retention_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_audit_logs_retention_update_with_http_info(org_id)

```ruby
begin
  # Update audit log retention settings
  data, status_code, headers = api_instance.put_admin_audit_logs_retention_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->put_admin_audit_logs_retention_update_with_http_info: #{e}"
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

