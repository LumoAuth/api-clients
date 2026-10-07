# LumoAuthApiClient::AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_audit_logs_actions**](AdminAuditLogsApi.md#admin_audit_logs_actions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant |
| [**admin_audit_logs_export**](AdminAuditLogsApi.md#admin_audit_logs_export) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON |
| [**admin_audit_logs_get**](AdminAuditLogsApi.md#admin_audit_logs_get) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry |
| [**admin_audit_logs_list**](AdminAuditLogsApi.md#admin_audit_logs_list) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries |
| [**admin_audit_logs_retention**](AdminAuditLogsApi.md#admin_audit_logs_retention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings |
| [**admin_audit_logs_stats**](AdminAuditLogsApi.md#admin_audit_logs_stats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days) |
| [**patch_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#patch_admin_audit_logs_retention_update) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |
| [**put_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#put_admin_audit_logs_retention_update) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |


## admin_audit_logs_actions

> <AdminAuditLogsActionsResponse> admin_audit_logs_actions(org_id)

List the distinct audit action types recorded for the tenant

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
  # List the distinct audit action types recorded for the tenant
  result = api_instance.admin_audit_logs_actions(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_actions: #{e}"
end
```

#### Using the admin_audit_logs_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsActionsResponse>, Integer, Hash)> admin_audit_logs_actions_with_http_info(org_id)

```ruby
begin
  # List the distinct audit action types recorded for the tenant
  data, status_code, headers = api_instance.admin_audit_logs_actions_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsActionsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_audit_logs_export

> String admin_audit_logs_export(org_id)

Export audit logs as CSV (default) or JSON

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
  # Export audit logs as CSV (default) or JSON
  result = api_instance.admin_audit_logs_export(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_export: #{e}"
end
```

#### Using the admin_audit_logs_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> admin_audit_logs_export_with_http_info(org_id)

```ruby
begin
  # Export audit logs as CSV (default) or JSON
  data, status_code, headers = api_instance.admin_audit_logs_export_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/json


## admin_audit_logs_get

> <AdminAuditLogsGetResponse> admin_audit_logs_get(org_id, log_id)

Get an audit log entry

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
  # Get an audit log entry
  result = api_instance.admin_audit_logs_get(org_id, log_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_get: #{e}"
end
```

#### Using the admin_audit_logs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsGetResponse>, Integer, Hash)> admin_audit_logs_get_with_http_info(org_id, log_id)

```ruby
begin
  # Get an audit log entry
  data, status_code, headers = api_instance.admin_audit_logs_get_with_http_info(org_id, log_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsGetResponse>
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

[**AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_audit_logs_list

> <AdminAuditLogsListResponse> admin_audit_logs_list(org_id)

List audit log entries

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
  # List audit log entries
  result = api_instance.admin_audit_logs_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_list: #{e}"
end
```

#### Using the admin_audit_logs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsListResponse>, Integer, Hash)> admin_audit_logs_list_with_http_info(org_id)

```ruby
begin
  # List audit log entries
  data, status_code, headers = api_instance.admin_audit_logs_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_audit_logs_retention

> <AdminAuditLogsRetentionResponse> admin_audit_logs_retention(org_id)

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
  result = api_instance.admin_audit_logs_retention(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_retention: #{e}"
end
```

#### Using the admin_audit_logs_retention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsRetentionResponse>, Integer, Hash)> admin_audit_logs_retention_with_http_info(org_id)

```ruby
begin
  # Get audit log retention settings
  data, status_code, headers = api_instance.admin_audit_logs_retention_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsRetentionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_retention_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_audit_logs_stats

> <AdminAuditLogsStatsResponse> admin_audit_logs_stats(org_id)

Audit log statistics for a period (default: last 30 days)

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
  # Audit log statistics for a period (default: last 30 days)
  result = api_instance.admin_audit_logs_stats(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_stats: #{e}"
end
```

#### Using the admin_audit_logs_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsStatsResponse>, Integer, Hash)> admin_audit_logs_stats_with_http_info(org_id)

```ruby
begin
  # Audit log statistics for a period (default: last 30 days)
  data, status_code, headers = api_instance.admin_audit_logs_stats_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsStatsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->admin_audit_logs_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_audit_logs_retention_update

> <AdminAuditLogsRetentionResponse> patch_admin_audit_logs_retention_update(org_id)

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
  result = api_instance.patch_admin_audit_logs_retention_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->patch_admin_audit_logs_retention_update: #{e}"
end
```

#### Using the patch_admin_audit_logs_retention_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsRetentionResponse>, Integer, Hash)> patch_admin_audit_logs_retention_update_with_http_info(org_id)

```ruby
begin
  # Update audit log retention settings
  data, status_code, headers = api_instance.patch_admin_audit_logs_retention_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsRetentionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->patch_admin_audit_logs_retention_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_audit_logs_retention_update

> <AdminAuditLogsRetentionResponse> put_admin_audit_logs_retention_update(org_id)

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
  result = api_instance.put_admin_audit_logs_retention_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->put_admin_audit_logs_retention_update: #{e}"
end
```

#### Using the put_admin_audit_logs_retention_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAuditLogsRetentionResponse>, Integer, Hash)> put_admin_audit_logs_retention_update_with_http_info(org_id)

```ruby
begin
  # Update audit log retention settings
  data, status_code, headers = api_instance.put_admin_audit_logs_retention_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAuditLogsRetentionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAuditLogsApi->put_admin_audit_logs_retention_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

