# lumoauth_api_client.AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_analytics_dashboard**](AdminSettingsApi.md#admin_analytics_dashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
[**admin_analytics_logins**](AdminSettingsApi.md#admin_analytics_logins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
[**admin_analytics_users**](AdminSettingsApi.md#admin_analytics_users) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
[**admin_organization_get**](AdminSettingsApi.md#admin_organization_get) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
[**admin_settings_all**](AdminSettingsApi.md#admin_settings_all) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
[**admin_settings_auth_get**](AdminSettingsApi.md#admin_settings_auth_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
[**admin_settings_authentication_get**](AdminSettingsApi.md#admin_settings_authentication_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
[**admin_settings_branding_get**](AdminSettingsApi.md#admin_settings_branding_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
[**admin_settings_email_get**](AdminSettingsApi.md#admin_settings_email_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
[**admin_settings_general_get**](AdminSettingsApi.md#admin_settings_general_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
[**admin_settings_scim_get**](AdminSettingsApi.md#admin_settings_scim_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
[**admin_settings_security_get**](AdminSettingsApi.md#admin_settings_security_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
[**admin_tenant_get**](AdminSettingsApi.md#admin_tenant_get) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
[**patch_admin_organization_update**](AdminSettingsApi.md#patch_admin_organization_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**patch_admin_settings_auth_update**](AdminSettingsApi.md#patch_admin_settings_auth_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**patch_admin_settings_authentication_update**](AdminSettingsApi.md#patch_admin_settings_authentication_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**patch_admin_settings_branding_update**](AdminSettingsApi.md#patch_admin_settings_branding_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**patch_admin_settings_email_update**](AdminSettingsApi.md#patch_admin_settings_email_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**patch_admin_settings_general_update**](AdminSettingsApi.md#patch_admin_settings_general_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**patch_admin_settings_scim_update**](AdminSettingsApi.md#patch_admin_settings_scim_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**patch_admin_settings_security_update**](AdminSettingsApi.md#patch_admin_settings_security_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**patch_admin_tenant_update**](AdminSettingsApi.md#patch_admin_tenant_update) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
[**put_admin_organization_update**](AdminSettingsApi.md#put_admin_organization_update) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**put_admin_settings_auth_update**](AdminSettingsApi.md#put_admin_settings_auth_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**put_admin_settings_authentication_update**](AdminSettingsApi.md#put_admin_settings_authentication_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**put_admin_settings_branding_update**](AdminSettingsApi.md#put_admin_settings_branding_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**put_admin_settings_email_update**](AdminSettingsApi.md#put_admin_settings_email_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**put_admin_settings_general_update**](AdminSettingsApi.md#put_admin_settings_general_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**put_admin_settings_scim_update**](AdminSettingsApi.md#put_admin_settings_scim_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**put_admin_settings_security_update**](AdminSettingsApi.md#put_admin_settings_security_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**put_admin_tenant_update**](AdminSettingsApi.md#put_admin_tenant_update) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings


# **admin_analytics_dashboard**
> AdminAnalyticsDashboardResponse admin_analytics_dashboard(org_id)

Get dashboard analytics

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_analytics_dashboard_response import AdminAnalyticsDashboardResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get dashboard analytics
        api_response = api_instance.admin_analytics_dashboard(org_id)
        print("The response of AdminSettingsApi->admin_analytics_dashboard:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_analytics_dashboard: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Dashboard counters |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_analytics_logins**
> AdminAnalyticsLoginsResponse admin_analytics_logins(org_id, days=days)

Get login analytics

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_analytics_logins_response import AdminAnalyticsLoginsResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    days = 30 # int | Window in days (1-90, default 30). (optional) (default to 30)

    try:
        # Get login analytics
        api_response = api_instance.admin_analytics_logins(org_id, days=days)
        print("The response of AdminSettingsApi->admin_analytics_logins:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_analytics_logins: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **days** | **int**| Window in days (1-90, default 30). | [optional] [default to 30]

### Return type

[**AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Daily login attempts |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_analytics_users**
> AdminAnalyticsUsersResponse admin_analytics_users(org_id, days=days)

Get user growth analytics

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_analytics_users_response import AdminAnalyticsUsersResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    days = 30 # int | Window in days (1-90, default 30). (optional) (default to 30)

    try:
        # Get user growth analytics
        api_response = api_instance.admin_analytics_users(org_id, days=days)
        print("The response of AdminSettingsApi->admin_analytics_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_analytics_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **days** | **int**| Window in days (1-90, default 30). | [optional] [default to 30]

### Return type

[**AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Daily registrations and user breakdowns |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_organization_get**
> AdminTenantGetResponse admin_organization_get(org_id)

Get organization (tenant) profile

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_tenant_get_response import AdminTenantGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get organization (tenant) profile
        api_response = api_instance.admin_organization_get(org_id)
        print("The response of AdminSettingsApi->admin_organization_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_organization_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Organization profile |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_all**
> AdminSettingsAllResponse admin_settings_all(org_id)

Get all settings (combined)

Needs `settings.view`. The `branding` part is returned only to a caller who also holds `branding.view` (for an API key, its creator), as for GET /settings/branding and the portal's branding page; without it the key is left out.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_all_response import AdminSettingsAllResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get all settings (combined)
        api_response = api_instance.admin_settings_all(org_id)
        print("The response of AdminSettingsApi->admin_settings_all:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_all: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Combined settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_auth_get**
> AdminSettingsAuthenticationGetResponse admin_settings_auth_get(org_id)

Get authentication settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_authentication_get_response import AdminSettingsAuthenticationGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get authentication settings
        api_response = api_instance.admin_settings_auth_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_auth_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_auth_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authentication settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_authentication_get**
> AdminSettingsAuthenticationGetResponse admin_settings_authentication_get(org_id)

Get authentication settings (alias for settings/auth)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_authentication_get_response import AdminSettingsAuthenticationGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get authentication settings (alias for settings/auth)
        api_response = api_instance.admin_settings_authentication_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_authentication_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_authentication_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authentication settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_branding_get**
> AdminSettingsBrandingGetResponse admin_settings_branding_get(org_id)

Get branding/login page settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_branding_get_response import AdminSettingsBrandingGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get branding/login page settings
        api_response = api_instance.admin_settings_branding_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_branding_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_branding_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Branding settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_email_get**
> AdminSettingsEmailGetResponse admin_settings_email_get(org_id)

Get email settings

Shows who sends the organization's mail: its own mail provider (set up in the portal) with the From address, From name and Reply-To stored there, or LumoAuth with LumoAuth's sender.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_email_get_response import AdminSettingsEmailGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get email settings
        api_response = api_instance.admin_settings_email_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_email_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_email_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Email settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_general_get**
> AdminSettingsGeneralGetResponse admin_settings_general_get(org_id)

Get general settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_general_get_response import AdminSettingsGeneralGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get general settings
        api_response = api_instance.admin_settings_general_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_general_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_general_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | General settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_scim_get**
> AdminSettingsScimGetResponse admin_settings_scim_get(org_id)

Get SCIM settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_scim_get_response import AdminSettingsScimGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get SCIM settings
        api_response = api_instance.admin_settings_scim_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_scim_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_scim_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_settings_security_get**
> AdminSettingsSecurityGetResponse admin_settings_security_get(org_id)

Get security settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_settings_security_get_response import AdminSettingsSecurityGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get security settings
        api_response = api_instance.admin_settings_security_get(org_id)
        print("The response of AdminSettingsApi->admin_settings_security_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_settings_security_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_tenant_get**
> AdminTenantGetResponse admin_tenant_get(org_id)

Get organization (tenant) profile

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_tenant_get_response import AdminTenantGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get organization (tenant) profile
        api_response = api_instance.admin_tenant_get(org_id)
        print("The response of AdminSettingsApi->admin_tenant_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->admin_tenant_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Organization profile |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_organization_update**
> PutAdminTenantUpdateResponse patch_admin_organization_update(org_id)

Update organization (tenant) name and settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_tenant_update_response import PutAdminTenantUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update organization (tenant) name and settings
        api_response = api_instance.patch_admin_organization_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_organization_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_organization_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization profile |  -  |
**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_auth_update**
> PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_auth_update(org_id)

Update authentication settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_authentication_update_response import PutAdminSettingsAuthenticationUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update authentication settings
        api_response = api_instance.patch_admin_settings_auth_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_settings_auth_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_auth_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated authentication settings |  -  |
**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_authentication_update**
> PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_authentication_update(org_id)

Update authentication settings (alias for settings/auth)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_authentication_update_response import PutAdminSettingsAuthenticationUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update authentication settings (alias for settings/auth)
        api_response = api_instance.patch_admin_settings_authentication_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_settings_authentication_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_authentication_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated authentication settings |  -  |
**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_branding_update**
> PutAdminSettingsBrandingUpdateResponse patch_admin_settings_branding_update(org_id)

Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_branding_update_response import PutAdminSettingsBrandingUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update branding/login page settings
        api_response = api_instance.patch_admin_settings_branding_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_settings_branding_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_branding_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated branding settings |  -  |
**403** | A sign-in policy key would change without settings.manage, or custom_css, custom_html or show_powered_by: false would be set on a plan that does not include it. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_email_update**
> PutAdminSettingsEmailUpdateResponse patch_admin_settings_email_update(org_id, put_admin_settings_email_update_request=put_admin_settings_email_update_request)

Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_email_update_request import PutAdminSettingsEmailUpdateRequest
from lumoauth_api_client.models.put_admin_settings_email_update_response import PutAdminSettingsEmailUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_settings_email_update_request = lumoauth_api_client.PutAdminSettingsEmailUpdateRequest() # PutAdminSettingsEmailUpdateRequest |  (optional)

    try:
        # Update email settings
        api_response = api_instance.patch_admin_settings_email_update(org_id, put_admin_settings_email_update_request=put_admin_settings_email_update_request)
        print("The response of AdminSettingsApi->patch_admin_settings_email_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_email_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_settings_email_update_request** | [**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md)|  | [optional] 

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated email settings |  -  |
**400** | A value is not valid, a field is not supported, or the organization has no mail provider of its own (details.rejected_keys names the fields). Nothing is stored. |  -  |
**403** | The caller does not hold settings.manage and users.delete. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_general_update**
> PutAdminSettingsGeneralUpdateResponse patch_admin_settings_general_update(org_id, put_admin_settings_general_update_request=put_admin_settings_general_update_request)

Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_general_update_request import PutAdminSettingsGeneralUpdateRequest
from lumoauth_api_client.models.put_admin_settings_general_update_response import PutAdminSettingsGeneralUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_settings_general_update_request = lumoauth_api_client.PutAdminSettingsGeneralUpdateRequest() # PutAdminSettingsGeneralUpdateRequest |  (optional)

    try:
        # Update general settings
        api_response = api_instance.patch_admin_settings_general_update(org_id, put_admin_settings_general_update_request=put_admin_settings_general_update_request)
        print("The response of AdminSettingsApi->patch_admin_settings_general_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_general_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_settings_general_update_request** | [**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md)|  | [optional] 

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated general settings |  -  |
**400** | A value is not valid (empty or too long name, unknown language, different values for name and one of its aliases) or is not a setting (timezone). Nothing is stored. |  -  |
**403** | The caller does not hold settings.manage, or locale would change and the caller does not hold branding.edit. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_scim_update**
> PutAdminSettingsScimUpdateResponse patch_admin_settings_scim_update(org_id)

Update SCIM settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_scim_update_response import PutAdminSettingsScimUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update SCIM settings
        api_response = api_instance.patch_admin_settings_scim_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_settings_scim_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_scim_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_settings_security_update**
> PutAdminSettingsSecurityUpdateResponse patch_admin_settings_security_update(org_id)

Update security settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_security_update_response import PutAdminSettingsSecurityUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update security settings
        api_response = api_instance.patch_admin_settings_security_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_settings_security_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_settings_security_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_tenant_update**
> PutAdminTenantUpdateResponse patch_admin_tenant_update(org_id)

Update organization (tenant) name and settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_tenant_update_response import PutAdminTenantUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update organization (tenant) name and settings
        api_response = api_instance.patch_admin_tenant_update(org_id)
        print("The response of AdminSettingsApi->patch_admin_tenant_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->patch_admin_tenant_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization profile |  -  |
**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_organization_update**
> PutAdminTenantUpdateResponse put_admin_organization_update(org_id)

Update organization (tenant) name and settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_tenant_update_response import PutAdminTenantUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update organization (tenant) name and settings
        api_response = api_instance.put_admin_organization_update(org_id)
        print("The response of AdminSettingsApi->put_admin_organization_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_organization_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization profile |  -  |
**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_auth_update**
> PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_auth_update(org_id)

Update authentication settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_authentication_update_response import PutAdminSettingsAuthenticationUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update authentication settings
        api_response = api_instance.put_admin_settings_auth_update(org_id)
        print("The response of AdminSettingsApi->put_admin_settings_auth_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_auth_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated authentication settings |  -  |
**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_authentication_update**
> PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_authentication_update(org_id)

Update authentication settings (alias for settings/auth)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_authentication_update_response import PutAdminSettingsAuthenticationUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update authentication settings (alias for settings/auth)
        api_response = api_instance.put_admin_settings_authentication_update(org_id)
        print("The response of AdminSettingsApi->put_admin_settings_authentication_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_authentication_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated authentication settings |  -  |
**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_branding_update**
> PutAdminSettingsBrandingUpdateResponse put_admin_settings_branding_update(org_id)

Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_branding_update_response import PutAdminSettingsBrandingUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update branding/login page settings
        api_response = api_instance.put_admin_settings_branding_update(org_id)
        print("The response of AdminSettingsApi->put_admin_settings_branding_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_branding_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated branding settings |  -  |
**403** | A sign-in policy key would change without settings.manage, or custom_css, custom_html or show_powered_by: false would be set on a plan that does not include it. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_email_update**
> PutAdminSettingsEmailUpdateResponse put_admin_settings_email_update(org_id, put_admin_settings_email_update_request=put_admin_settings_email_update_request)

Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_email_update_request import PutAdminSettingsEmailUpdateRequest
from lumoauth_api_client.models.put_admin_settings_email_update_response import PutAdminSettingsEmailUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_settings_email_update_request = lumoauth_api_client.PutAdminSettingsEmailUpdateRequest() # PutAdminSettingsEmailUpdateRequest |  (optional)

    try:
        # Update email settings
        api_response = api_instance.put_admin_settings_email_update(org_id, put_admin_settings_email_update_request=put_admin_settings_email_update_request)
        print("The response of AdminSettingsApi->put_admin_settings_email_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_email_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_settings_email_update_request** | [**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md)|  | [optional] 

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated email settings |  -  |
**400** | A value is not valid, a field is not supported, or the organization has no mail provider of its own (details.rejected_keys names the fields). Nothing is stored. |  -  |
**403** | The caller does not hold settings.manage and users.delete. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_general_update**
> PutAdminSettingsGeneralUpdateResponse put_admin_settings_general_update(org_id, put_admin_settings_general_update_request=put_admin_settings_general_update_request)

Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_general_update_request import PutAdminSettingsGeneralUpdateRequest
from lumoauth_api_client.models.put_admin_settings_general_update_response import PutAdminSettingsGeneralUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_settings_general_update_request = lumoauth_api_client.PutAdminSettingsGeneralUpdateRequest() # PutAdminSettingsGeneralUpdateRequest |  (optional)

    try:
        # Update general settings
        api_response = api_instance.put_admin_settings_general_update(org_id, put_admin_settings_general_update_request=put_admin_settings_general_update_request)
        print("The response of AdminSettingsApi->put_admin_settings_general_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_general_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_settings_general_update_request** | [**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md)|  | [optional] 

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated general settings |  -  |
**400** | A value is not valid (empty or too long name, unknown language, different values for name and one of its aliases) or is not a setting (timezone). Nothing is stored. |  -  |
**403** | The caller does not hold settings.manage, or locale would change and the caller does not hold branding.edit. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_scim_update**
> PutAdminSettingsScimUpdateResponse put_admin_settings_scim_update(org_id)

Update SCIM settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_scim_update_response import PutAdminSettingsScimUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update SCIM settings
        api_response = api_instance.put_admin_settings_scim_update(org_id)
        print("The response of AdminSettingsApi->put_admin_settings_scim_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_scim_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_settings_security_update**
> PutAdminSettingsSecurityUpdateResponse put_admin_settings_security_update(org_id)

Update security settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_settings_security_update_response import PutAdminSettingsSecurityUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update security settings
        api_response = api_instance.put_admin_settings_security_update(org_id)
        print("The response of AdminSettingsApi->put_admin_settings_security_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_settings_security_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_tenant_update**
> PutAdminTenantUpdateResponse put_admin_tenant_update(org_id)

Update organization (tenant) name and settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_tenant_update_response import PutAdminTenantUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSettingsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Update organization (tenant) name and settings
        api_response = api_instance.put_admin_tenant_update(org_id)
        print("The response of AdminSettingsApi->put_admin_tenant_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSettingsApi->put_admin_tenant_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization profile |  -  |
**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

