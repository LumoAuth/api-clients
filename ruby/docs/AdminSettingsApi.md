# LumoAuthApiClient::AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_analytics_dashboard**](AdminSettingsApi.md#admin_analytics_dashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics |
| [**admin_analytics_logins**](AdminSettingsApi.md#admin_analytics_logins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics |
| [**admin_analytics_users**](AdminSettingsApi.md#admin_analytics_users) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics |
| [**admin_organization_get**](AdminSettingsApi.md#admin_organization_get) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile |
| [**admin_settings_all**](AdminSettingsApi.md#admin_settings_all) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined) |
| [**admin_settings_auth_get**](AdminSettingsApi.md#admin_settings_auth_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings |
| [**admin_settings_authentication_get**](AdminSettingsApi.md#admin_settings_authentication_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth) |
| [**admin_settings_branding_get**](AdminSettingsApi.md#admin_settings_branding_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings |
| [**admin_settings_email_get**](AdminSettingsApi.md#admin_settings_email_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings |
| [**admin_settings_general_get**](AdminSettingsApi.md#admin_settings_general_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings |
| [**admin_settings_scim_get**](AdminSettingsApi.md#admin_settings_scim_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings |
| [**admin_settings_security_get**](AdminSettingsApi.md#admin_settings_security_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings |
| [**admin_tenant_get**](AdminSettingsApi.md#admin_tenant_get) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile |
| [**patch_admin_organization_update**](AdminSettingsApi.md#patch_admin_organization_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings |
| [**patch_admin_settings_auth_update**](AdminSettingsApi.md#patch_admin_settings_auth_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings |
| [**patch_admin_settings_authentication_update**](AdminSettingsApi.md#patch_admin_settings_authentication_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth) |
| [**patch_admin_settings_branding_update**](AdminSettingsApi.md#patch_admin_settings_branding_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings |
| [**patch_admin_settings_email_update**](AdminSettingsApi.md#patch_admin_settings_email_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings |
| [**patch_admin_settings_general_update**](AdminSettingsApi.md#patch_admin_settings_general_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings |
| [**patch_admin_settings_scim_update**](AdminSettingsApi.md#patch_admin_settings_scim_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings |
| [**patch_admin_settings_security_update**](AdminSettingsApi.md#patch_admin_settings_security_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings |
| [**patch_admin_tenant_update**](AdminSettingsApi.md#patch_admin_tenant_update) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings |
| [**put_admin_organization_update**](AdminSettingsApi.md#put_admin_organization_update) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings |
| [**put_admin_settings_auth_update**](AdminSettingsApi.md#put_admin_settings_auth_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings |
| [**put_admin_settings_authentication_update**](AdminSettingsApi.md#put_admin_settings_authentication_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth) |
| [**put_admin_settings_branding_update**](AdminSettingsApi.md#put_admin_settings_branding_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings |
| [**put_admin_settings_email_update**](AdminSettingsApi.md#put_admin_settings_email_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings |
| [**put_admin_settings_general_update**](AdminSettingsApi.md#put_admin_settings_general_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings |
| [**put_admin_settings_scim_update**](AdminSettingsApi.md#put_admin_settings_scim_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings |
| [**put_admin_settings_security_update**](AdminSettingsApi.md#put_admin_settings_security_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings |
| [**put_admin_tenant_update**](AdminSettingsApi.md#put_admin_tenant_update) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings |


## admin_analytics_dashboard

> <AdminAnalyticsDashboardResponse> admin_analytics_dashboard(org_id)

Get dashboard analytics

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get dashboard analytics
  result = api_instance.admin_analytics_dashboard(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_dashboard: #{e}"
end
```

#### Using the admin_analytics_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAnalyticsDashboardResponse>, Integer, Hash)> admin_analytics_dashboard_with_http_info(org_id)

```ruby
begin
  # Get dashboard analytics
  data, status_code, headers = api_instance.admin_analytics_dashboard_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAnalyticsDashboardResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_analytics_logins

> <AdminAnalyticsLoginsResponse> admin_analytics_logins(org_id, opts)

Get login analytics

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 
opts = {
  days: 56 # Integer | Window in days (1-90, default 30).
}

begin
  # Get login analytics
  result = api_instance.admin_analytics_logins(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_logins: #{e}"
end
```

#### Using the admin_analytics_logins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAnalyticsLoginsResponse>, Integer, Hash)> admin_analytics_logins_with_http_info(org_id, opts)

```ruby
begin
  # Get login analytics
  data, status_code, headers = api_instance.admin_analytics_logins_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAnalyticsLoginsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **days** | **Integer** | Window in days (1-90, default 30). | [optional][default to 30] |

### Return type

[**AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_analytics_users

> <AdminAnalyticsUsersResponse> admin_analytics_users(org_id, opts)

Get user growth analytics

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 
opts = {
  days: 56 # Integer | Window in days (1-90, default 30).
}

begin
  # Get user growth analytics
  result = api_instance.admin_analytics_users(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_users: #{e}"
end
```

#### Using the admin_analytics_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAnalyticsUsersResponse>, Integer, Hash)> admin_analytics_users_with_http_info(org_id, opts)

```ruby
begin
  # Get user growth analytics
  data, status_code, headers = api_instance.admin_analytics_users_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAnalyticsUsersResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_analytics_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **days** | **Integer** | Window in days (1-90, default 30). | [optional][default to 30] |

### Return type

[**AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_organization_get

> <AdminTenantGetResponse> admin_organization_get(org_id)

Get organization (tenant) profile

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get organization (tenant) profile
  result = api_instance.admin_organization_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_organization_get: #{e}"
end
```

#### Using the admin_organization_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminTenantGetResponse>, Integer, Hash)> admin_organization_get_with_http_info(org_id)

```ruby
begin
  # Get organization (tenant) profile
  data, status_code, headers = api_instance.admin_organization_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminTenantGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_organization_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_all

> <AdminSettingsAllResponse> admin_settings_all(org_id)

Get all settings (combined)

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get all settings (combined)
  result = api_instance.admin_settings_all(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_all: #{e}"
end
```

#### Using the admin_settings_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsAllResponse>, Integer, Hash)> admin_settings_all_with_http_info(org_id)

```ruby
begin
  # Get all settings (combined)
  data, status_code, headers = api_instance.admin_settings_all_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsAllResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_auth_get

> <AdminSettingsAuthenticationGetResponse> admin_settings_auth_get(org_id)

Get authentication settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get authentication settings
  result = api_instance.admin_settings_auth_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_auth_get: #{e}"
end
```

#### Using the admin_settings_auth_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsAuthenticationGetResponse>, Integer, Hash)> admin_settings_auth_get_with_http_info(org_id)

```ruby
begin
  # Get authentication settings
  data, status_code, headers = api_instance.admin_settings_auth_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsAuthenticationGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_auth_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_authentication_get

> <AdminSettingsAuthenticationGetResponse> admin_settings_authentication_get(org_id)

Get authentication settings (alias for settings/auth)

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get authentication settings (alias for settings/auth)
  result = api_instance.admin_settings_authentication_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_authentication_get: #{e}"
end
```

#### Using the admin_settings_authentication_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsAuthenticationGetResponse>, Integer, Hash)> admin_settings_authentication_get_with_http_info(org_id)

```ruby
begin
  # Get authentication settings (alias for settings/auth)
  data, status_code, headers = api_instance.admin_settings_authentication_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsAuthenticationGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_authentication_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_branding_get

> <AdminSettingsBrandingGetResponse> admin_settings_branding_get(org_id)

Get branding/login page settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get branding/login page settings
  result = api_instance.admin_settings_branding_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_branding_get: #{e}"
end
```

#### Using the admin_settings_branding_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsBrandingGetResponse>, Integer, Hash)> admin_settings_branding_get_with_http_info(org_id)

```ruby
begin
  # Get branding/login page settings
  data, status_code, headers = api_instance.admin_settings_branding_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsBrandingGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_branding_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_email_get

> <AdminSettingsEmailGetResponse> admin_settings_email_get(org_id)

Get email settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get email settings
  result = api_instance.admin_settings_email_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_email_get: #{e}"
end
```

#### Using the admin_settings_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsEmailGetResponse>, Integer, Hash)> admin_settings_email_get_with_http_info(org_id)

```ruby
begin
  # Get email settings
  data, status_code, headers = api_instance.admin_settings_email_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsEmailGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_general_get

> <AdminSettingsGeneralGetResponse> admin_settings_general_get(org_id)

Get general settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get general settings
  result = api_instance.admin_settings_general_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_general_get: #{e}"
end
```

#### Using the admin_settings_general_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsGeneralGetResponse>, Integer, Hash)> admin_settings_general_get_with_http_info(org_id)

```ruby
begin
  # Get general settings
  data, status_code, headers = api_instance.admin_settings_general_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsGeneralGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_general_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_scim_get

> <AdminSettingsScimGetResponse> admin_settings_scim_get(org_id)

Get SCIM settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get SCIM settings
  result = api_instance.admin_settings_scim_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_scim_get: #{e}"
end
```

#### Using the admin_settings_scim_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsScimGetResponse>, Integer, Hash)> admin_settings_scim_get_with_http_info(org_id)

```ruby
begin
  # Get SCIM settings
  data, status_code, headers = api_instance.admin_settings_scim_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsScimGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_scim_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_settings_security_get

> <AdminSettingsSecurityGetResponse> admin_settings_security_get(org_id)

Get security settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get security settings
  result = api_instance.admin_settings_security_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_security_get: #{e}"
end
```

#### Using the admin_settings_security_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminSettingsSecurityGetResponse>, Integer, Hash)> admin_settings_security_get_with_http_info(org_id)

```ruby
begin
  # Get security settings
  data, status_code, headers = api_instance.admin_settings_security_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminSettingsSecurityGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_settings_security_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_tenant_get

> <AdminTenantGetResponse> admin_tenant_get(org_id)

Get organization (tenant) profile

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get organization (tenant) profile
  result = api_instance.admin_tenant_get(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_tenant_get: #{e}"
end
```

#### Using the admin_tenant_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminTenantGetResponse>, Integer, Hash)> admin_tenant_get_with_http_info(org_id)

```ruby
begin
  # Get organization (tenant) profile
  data, status_code, headers = api_instance.admin_tenant_get_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminTenantGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->admin_tenant_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_organization_update

> <PutAdminTenantUpdateResponse> patch_admin_organization_update(org_id)

Update organization (tenant) name and settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update organization (tenant) name and settings
  result = api_instance.patch_admin_organization_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_organization_update: #{e}"
end
```

#### Using the patch_admin_organization_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminTenantUpdateResponse>, Integer, Hash)> patch_admin_organization_update_with_http_info(org_id)

```ruby
begin
  # Update organization (tenant) name and settings
  data, status_code, headers = api_instance.patch_admin_organization_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminTenantUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_organization_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_auth_update

> <PutAdminSettingsAuthenticationUpdateResponse> patch_admin_settings_auth_update(org_id)

Update authentication settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update authentication settings
  result = api_instance.patch_admin_settings_auth_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_auth_update: #{e}"
end
```

#### Using the patch_admin_settings_auth_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsAuthenticationUpdateResponse>, Integer, Hash)> patch_admin_settings_auth_update_with_http_info(org_id)

```ruby
begin
  # Update authentication settings
  data, status_code, headers = api_instance.patch_admin_settings_auth_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsAuthenticationUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_auth_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_authentication_update

> <PutAdminSettingsAuthenticationUpdateResponse> patch_admin_settings_authentication_update(org_id)

Update authentication settings (alias for settings/auth)

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update authentication settings (alias for settings/auth)
  result = api_instance.patch_admin_settings_authentication_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_authentication_update: #{e}"
end
```

#### Using the patch_admin_settings_authentication_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsAuthenticationUpdateResponse>, Integer, Hash)> patch_admin_settings_authentication_update_with_http_info(org_id)

```ruby
begin
  # Update authentication settings (alias for settings/auth)
  data, status_code, headers = api_instance.patch_admin_settings_authentication_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsAuthenticationUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_authentication_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_branding_update

> <PutAdminSettingsBrandingUpdateResponse> patch_admin_settings_branding_update(org_id)

Update branding/login page settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update branding/login page settings
  result = api_instance.patch_admin_settings_branding_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_branding_update: #{e}"
end
```

#### Using the patch_admin_settings_branding_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsBrandingUpdateResponse>, Integer, Hash)> patch_admin_settings_branding_update_with_http_info(org_id)

```ruby
begin
  # Update branding/login page settings
  data, status_code, headers = api_instance.patch_admin_settings_branding_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsBrandingUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_branding_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_email_update

> <PutAdminSettingsEmailUpdateResponse> patch_admin_settings_email_update(org_id)

Update email settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update email settings
  result = api_instance.patch_admin_settings_email_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_email_update: #{e}"
end
```

#### Using the patch_admin_settings_email_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsEmailUpdateResponse>, Integer, Hash)> patch_admin_settings_email_update_with_http_info(org_id)

```ruby
begin
  # Update email settings
  data, status_code, headers = api_instance.patch_admin_settings_email_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsEmailUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_email_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_general_update

> <PutAdminSettingsGeneralUpdateResponse> patch_admin_settings_general_update(org_id)

Update general settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update general settings
  result = api_instance.patch_admin_settings_general_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_general_update: #{e}"
end
```

#### Using the patch_admin_settings_general_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsGeneralUpdateResponse>, Integer, Hash)> patch_admin_settings_general_update_with_http_info(org_id)

```ruby
begin
  # Update general settings
  data, status_code, headers = api_instance.patch_admin_settings_general_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsGeneralUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_general_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_scim_update

> <PutAdminSettingsScimUpdateResponse> patch_admin_settings_scim_update(org_id)

Update SCIM settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update SCIM settings
  result = api_instance.patch_admin_settings_scim_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_scim_update: #{e}"
end
```

#### Using the patch_admin_settings_scim_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsScimUpdateResponse>, Integer, Hash)> patch_admin_settings_scim_update_with_http_info(org_id)

```ruby
begin
  # Update SCIM settings
  data, status_code, headers = api_instance.patch_admin_settings_scim_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsScimUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_scim_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_settings_security_update

> <PutAdminSettingsSecurityUpdateResponse> patch_admin_settings_security_update(org_id)

Update security settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update security settings
  result = api_instance.patch_admin_settings_security_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_security_update: #{e}"
end
```

#### Using the patch_admin_settings_security_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsSecurityUpdateResponse>, Integer, Hash)> patch_admin_settings_security_update_with_http_info(org_id)

```ruby
begin
  # Update security settings
  data, status_code, headers = api_instance.patch_admin_settings_security_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsSecurityUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_settings_security_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_tenant_update

> <PutAdminTenantUpdateResponse> patch_admin_tenant_update(org_id)

Update organization (tenant) name and settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update organization (tenant) name and settings
  result = api_instance.patch_admin_tenant_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_tenant_update: #{e}"
end
```

#### Using the patch_admin_tenant_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminTenantUpdateResponse>, Integer, Hash)> patch_admin_tenant_update_with_http_info(org_id)

```ruby
begin
  # Update organization (tenant) name and settings
  data, status_code, headers = api_instance.patch_admin_tenant_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminTenantUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->patch_admin_tenant_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_organization_update

> <PutAdminTenantUpdateResponse> put_admin_organization_update(org_id)

Update organization (tenant) name and settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update organization (tenant) name and settings
  result = api_instance.put_admin_organization_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_organization_update: #{e}"
end
```

#### Using the put_admin_organization_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminTenantUpdateResponse>, Integer, Hash)> put_admin_organization_update_with_http_info(org_id)

```ruby
begin
  # Update organization (tenant) name and settings
  data, status_code, headers = api_instance.put_admin_organization_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminTenantUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_organization_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_auth_update

> <PutAdminSettingsAuthenticationUpdateResponse> put_admin_settings_auth_update(org_id)

Update authentication settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update authentication settings
  result = api_instance.put_admin_settings_auth_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_auth_update: #{e}"
end
```

#### Using the put_admin_settings_auth_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsAuthenticationUpdateResponse>, Integer, Hash)> put_admin_settings_auth_update_with_http_info(org_id)

```ruby
begin
  # Update authentication settings
  data, status_code, headers = api_instance.put_admin_settings_auth_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsAuthenticationUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_auth_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_authentication_update

> <PutAdminSettingsAuthenticationUpdateResponse> put_admin_settings_authentication_update(org_id)

Update authentication settings (alias for settings/auth)

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update authentication settings (alias for settings/auth)
  result = api_instance.put_admin_settings_authentication_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_authentication_update: #{e}"
end
```

#### Using the put_admin_settings_authentication_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsAuthenticationUpdateResponse>, Integer, Hash)> put_admin_settings_authentication_update_with_http_info(org_id)

```ruby
begin
  # Update authentication settings (alias for settings/auth)
  data, status_code, headers = api_instance.put_admin_settings_authentication_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsAuthenticationUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_authentication_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_branding_update

> <PutAdminSettingsBrandingUpdateResponse> put_admin_settings_branding_update(org_id)

Update branding/login page settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update branding/login page settings
  result = api_instance.put_admin_settings_branding_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_branding_update: #{e}"
end
```

#### Using the put_admin_settings_branding_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsBrandingUpdateResponse>, Integer, Hash)> put_admin_settings_branding_update_with_http_info(org_id)

```ruby
begin
  # Update branding/login page settings
  data, status_code, headers = api_instance.put_admin_settings_branding_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsBrandingUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_branding_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_email_update

> <PutAdminSettingsEmailUpdateResponse> put_admin_settings_email_update(org_id)

Update email settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update email settings
  result = api_instance.put_admin_settings_email_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_email_update: #{e}"
end
```

#### Using the put_admin_settings_email_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsEmailUpdateResponse>, Integer, Hash)> put_admin_settings_email_update_with_http_info(org_id)

```ruby
begin
  # Update email settings
  data, status_code, headers = api_instance.put_admin_settings_email_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsEmailUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_email_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_general_update

> <PutAdminSettingsGeneralUpdateResponse> put_admin_settings_general_update(org_id)

Update general settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update general settings
  result = api_instance.put_admin_settings_general_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_general_update: #{e}"
end
```

#### Using the put_admin_settings_general_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsGeneralUpdateResponse>, Integer, Hash)> put_admin_settings_general_update_with_http_info(org_id)

```ruby
begin
  # Update general settings
  data, status_code, headers = api_instance.put_admin_settings_general_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsGeneralUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_general_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_scim_update

> <PutAdminSettingsScimUpdateResponse> put_admin_settings_scim_update(org_id)

Update SCIM settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update SCIM settings
  result = api_instance.put_admin_settings_scim_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_scim_update: #{e}"
end
```

#### Using the put_admin_settings_scim_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsScimUpdateResponse>, Integer, Hash)> put_admin_settings_scim_update_with_http_info(org_id)

```ruby
begin
  # Update SCIM settings
  data, status_code, headers = api_instance.put_admin_settings_scim_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsScimUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_scim_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_settings_security_update

> <PutAdminSettingsSecurityUpdateResponse> put_admin_settings_security_update(org_id)

Update security settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update security settings
  result = api_instance.put_admin_settings_security_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_security_update: #{e}"
end
```

#### Using the put_admin_settings_security_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminSettingsSecurityUpdateResponse>, Integer, Hash)> put_admin_settings_security_update_with_http_info(org_id)

```ruby
begin
  # Update security settings
  data, status_code, headers = api_instance.put_admin_settings_security_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminSettingsSecurityUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_settings_security_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_tenant_update

> <PutAdminTenantUpdateResponse> put_admin_tenant_update(org_id)

Update organization (tenant) name and settings

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

api_instance = LumoAuthApiClient::AdminSettingsApi.new
org_id = 'org_id_example' # String | 

begin
  # Update organization (tenant) name and settings
  result = api_instance.put_admin_tenant_update(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_tenant_update: #{e}"
end
```

#### Using the put_admin_tenant_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminTenantUpdateResponse>, Integer, Hash)> put_admin_tenant_update_with_http_info(org_id)

```ruby
begin
  # Update organization (tenant) name and settings
  data, status_code, headers = api_instance.put_admin_tenant_update_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminTenantUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminSettingsApi->put_admin_tenant_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

