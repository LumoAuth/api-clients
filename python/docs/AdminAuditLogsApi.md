# lumoauth_api_client.AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_audit_logs_actions**](AdminAuditLogsApi.md#admin_audit_logs_actions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization
[**admin_audit_logs_export**](AdminAuditLogsApi.md#admin_audit_logs_export) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
[**admin_audit_logs_get**](AdminAuditLogsApi.md#admin_audit_logs_get) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
[**admin_audit_logs_list**](AdminAuditLogsApi.md#admin_audit_logs_list) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
[**admin_audit_logs_retention**](AdminAuditLogsApi.md#admin_audit_logs_retention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
[**admin_audit_logs_stats**](AdminAuditLogsApi.md#admin_audit_logs_stats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
[**patch_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#patch_admin_audit_logs_retention_update) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
[**put_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#put_admin_audit_logs_retention_update) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings


# **admin_audit_logs_actions**
> AdminAuditLogsActionsResponse admin_audit_logs_actions(org_id)

List the distinct audit action types recorded for the organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_actions_response import AdminAuditLogsActionsResponse
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List the distinct audit action types recorded for the organization
        api_response = api_instance.admin_audit_logs_actions(org_id)
        print("The response of AdminAuditLogsApi->admin_audit_logs_actions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_actions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Action names |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_audit_logs_export**
> str admin_audit_logs_export(org_id, format=format, event_type=event_type, action=action, actor_id=actor_id, target_type=target_type, target_id=target_id, severity=severity, status=status, ip_address=ip_address, search=search, trace_id=trace_id, var_from=var_from, to=to)

Export audit logs as CSV (default) or JSON

Needs `audit.export` and `audit.view`, as the export on the portal's audit log page does.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 
    format = csv # str | csv (default) or json. (optional) (default to csv)
    event_type = 'event_type_example' # str | Exact event type, for example user.login. (optional)
    action = 'action_example' # str | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
    actor_id = 'actor_id_example' # str | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
    target_type = 'target_type_example' # str | Kind of the subject of the event. Also accepted as resourceType. (optional)
    target_id = 'target_id_example' # str | The subject of the event, for example the user of a login.failed entry. (optional)
    severity = 'severity_example' # str |  (optional)
    status = 'status_example' # str | Result of the event. (optional)
    ip_address = 'ip_address_example' # str |  (optional)
    search = 'search_example' # str | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
    trace_id = 'trace_id_example' # str | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
    var_from = '2013-10-20T19:20:30+01:00' # datetime | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
    to = '2013-10-20T19:20:30+01:00' # datetime | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

    try:
        # Export audit logs as CSV (default) or JSON
        api_response = api_instance.admin_audit_logs_export(org_id, format=format, event_type=event_type, action=action, actor_id=actor_id, target_type=target_type, target_id=target_id, severity=severity, status=status, ip_address=ip_address, search=search, trace_id=trace_id, var_from=var_from, to=to)
        print("The response of AdminAuditLogsApi->admin_audit_logs_export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **format** | **str**| csv (default) or json. | [optional] [default to csv]
 **event_type** | **str**| Exact event type, for example user.login. | [optional] 
 **action** | **str**| The short verb of the event (as GET /audit-logs/actions lists them). | [optional] 
 **actor_id** | **str**| Who acted: a user, API key or agent id. Also accepted as userId. | [optional] 
 **target_type** | **str**| Kind of the subject of the event. Also accepted as resourceType. | [optional] 
 **target_id** | **str**| The subject of the event, for example the user of a login.failed entry. | [optional] 
 **severity** | **str**|  | [optional] 
 **status** | **str**| Result of the event. | [optional] 
 **ip_address** | **str**|  | [optional] 
 **search** | **str**| Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] 
 **trace_id** | **str**| Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] 
 **var_from** | **datetime**| Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] 
 **to** | **datetime**| Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] 

### Return type

**str**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Download (Content-Disposition: attachment). JSON when ?format&#x3D;json, otherwise CSV; at most 10000 rows. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_audit_logs_get**
> AdminAuditLogsGetResponse admin_audit_logs_get(org_id, log_id)

Get an audit log entry

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_get_response import AdminAuditLogsGetResponse
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 
    log_id = 'log_id_example' # str | 

    try:
        # Get an audit log entry
        api_response = api_instance.admin_audit_logs_get(org_id, log_id)
        print("The response of AdminAuditLogsApi->admin_audit_logs_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **log_id** | **str**|  | 

### Return type

[**AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Audit log entry (detailed) |  -  |
**404** | Audit log not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_audit_logs_list**
> AdminAuditLogsListResponse admin_audit_logs_list(org_id, page=page, limit=limit, event_type=event_type, action=action, actor_id=actor_id, target_type=target_type, target_id=target_id, severity=severity, status=status, ip_address=ip_address, search=search, trace_id=trace_id, var_from=var_from, to=to)

List audit log entries

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_list_response import AdminAuditLogsListResponse
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 
    page = 1 # int |  (optional) (default to 1)
    limit = 25 # int |  (optional) (default to 25)
    event_type = 'event_type_example' # str | Exact event type, for example user.login. (optional)
    action = 'action_example' # str | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
    actor_id = 'actor_id_example' # str | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
    target_type = 'target_type_example' # str | Kind of the subject of the event. Also accepted as resourceType. (optional)
    target_id = 'target_id_example' # str | The subject of the event, for example the user of a login.failed entry. (optional)
    severity = 'severity_example' # str |  (optional)
    status = 'status_example' # str | Result of the event. (optional)
    ip_address = 'ip_address_example' # str |  (optional)
    search = 'search_example' # str | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
    trace_id = 'trace_id_example' # str | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
    var_from = '2013-10-20T19:20:30+01:00' # datetime | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
    to = '2013-10-20T19:20:30+01:00' # datetime | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

    try:
        # List audit log entries
        api_response = api_instance.admin_audit_logs_list(org_id, page=page, limit=limit, event_type=event_type, action=action, actor_id=actor_id, target_type=target_type, target_id=target_id, severity=severity, status=status, ip_address=ip_address, search=search, trace_id=trace_id, var_from=var_from, to=to)
        print("The response of AdminAuditLogsApi->admin_audit_logs_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 25]
 **event_type** | **str**| Exact event type, for example user.login. | [optional] 
 **action** | **str**| The short verb of the event (as GET /audit-logs/actions lists them). | [optional] 
 **actor_id** | **str**| Who acted: a user, API key or agent id. Also accepted as userId. | [optional] 
 **target_type** | **str**| Kind of the subject of the event. Also accepted as resourceType. | [optional] 
 **target_id** | **str**| The subject of the event, for example the user of a login.failed entry. | [optional] 
 **severity** | **str**|  | [optional] 
 **status** | **str**| Result of the event. | [optional] 
 **ip_address** | **str**|  | [optional] 
 **search** | **str**| Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] 
 **trace_id** | **str**| Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] 
 **var_from** | **datetime**| Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] 
 **to** | **datetime**| Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] 

### Return type

[**AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Audit log entries (summary fields only) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_audit_logs_retention**
> AdminAuditLogsRetentionResponse admin_audit_logs_retention(org_id)

Get audit log retention settings

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_retention_response import AdminAuditLogsRetentionResponse
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get audit log retention settings
        api_response = api_instance.admin_audit_logs_retention(org_id)
        print("The response of AdminAuditLogsApi->admin_audit_logs_retention:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_retention: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_audit_logs_stats**
> AdminAuditLogsStatsResponse admin_audit_logs_stats(org_id)

Audit log statistics for a period (default: last 30 days)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_stats_response import AdminAuditLogsStatsResponse
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Audit log statistics for a period (default: last 30 days)
        api_response = api_instance.admin_audit_logs_stats(org_id)
        print("The response of AdminAuditLogsApi->admin_audit_logs_stats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->admin_audit_logs_stats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Statistics |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_audit_logs_retention_update**
> AdminAuditLogsRetentionResponse patch_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_retention_response import AdminAuditLogsRetentionResponse
from lumoauth_api_client.models.put_admin_audit_logs_retention_update_request import PutAdminAuditLogsRetentionUpdateRequest
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_audit_logs_retention_update_request = lumoauth_api_client.PutAdminAuditLogsRetentionUpdateRequest() # PutAdminAuditLogsRetentionUpdateRequest | 

    try:
        # Update audit log retention settings
        api_response = api_instance.patch_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)
        print("The response of AdminAuditLogsApi->patch_admin_audit_logs_retention_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->patch_admin_audit_logs_retention_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_audit_logs_retention_update_request** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md)|  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_audit_logs_retention_update**
> AdminAuditLogsRetentionResponse put_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_audit_logs_retention_response import AdminAuditLogsRetentionResponse
from lumoauth_api_client.models.put_admin_audit_logs_retention_update_request import PutAdminAuditLogsRetentionUpdateRequest
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
    api_instance = lumoauth_api_client.AdminAuditLogsApi(api_client)
    org_id = 'org_id_example' # str | 
    put_admin_audit_logs_retention_update_request = lumoauth_api_client.PutAdminAuditLogsRetentionUpdateRequest() # PutAdminAuditLogsRetentionUpdateRequest | 

    try:
        # Update audit log retention settings
        api_response = api_instance.put_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)
        print("The response of AdminAuditLogsApi->put_admin_audit_logs_retention_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAuditLogsApi->put_admin_audit_logs_retention_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **put_admin_audit_logs_retention_update_request** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md)|  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

