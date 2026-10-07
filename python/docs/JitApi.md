# lumoauth_api_client.JitApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_request**](JitApi.md#approve_request) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).
[**complete_task**](JitApi.md#complete_task) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.
[**create_task**](JitApi.md#create_task) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.
[**deny_request**](JitApi.md#deny_request) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).
[**evaluate_task**](JitApi.md#evaluate_task) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.
[**get_request_status**](JitApi.md#get_request_status) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.
[**get_request_token**](JitApi.md#get_request_token) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.
[**list_pending_requests**](JitApi.md#list_pending_requests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.
[**request_permission**](JitApi.md#request_permission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.


# **approve_request**
> ApproveRequestResponse approve_request(org_id, request_id, approve_request_request=approve_request_request)

HITL: Approve a pending JIT request (requires user auth).

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.approve_request_request import ApproveRequestRequest
from lumoauth_api_client.models.approve_request_response import ApproveRequestResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    request_id = 'request_id_example' # str | 
    approve_request_request = lumoauth_api_client.ApproveRequestRequest() # ApproveRequestRequest |  (optional)

    try:
        # HITL: Approve a pending JIT request (requires user auth).
        api_response = api_instance.approve_request(org_id, request_id, approve_request_request=approve_request_request)
        print("The response of JitApi->approve_request:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->approve_request: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **request_id** | **str**|  | 
 **approve_request_request** | [**ApproveRequestRequest**](ApproveRequestRequest.md)|  | [optional] 

### Return type

[**ApproveRequestResponse**](ApproveRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Request approved. |  -  |
**400** | Invalid request (e.g. request not in an approvable state). |  -  |
**401** | Authentication required. |  -  |
**403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
**404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **complete_task**
> CompleteTaskResponse complete_task(org_id, task_id)

Complete a task and cleanup resources.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.complete_task_response import CompleteTaskResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    task_id = 'task_id_example' # str | 

    try:
        # Complete a task and cleanup resources.
        api_response = api_instance.complete_task(org_id, task_id)
        print("The response of JitApi->complete_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->complete_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **task_id** | **str**|  | 

### Return type

[**CompleteTaskResponse**](CompleteTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Task completed and resources cleaned up. |  -  |
**401** | Invalid or missing agent token. |  -  |
**403** | Task belongs to a different agent, or a JIT token of another task was used. |  -  |
**404** | Tenant or task not found. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_task**
> CreateTaskResponse create_task(org_id, create_task_request=create_task_request)

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions.
This limits the "blast radius" of any potential compromise.

Request body:
{
  "name": "Research Task #123",           // Optional: human-readable name
  "type": "research",                     // Optional: task type for categorization
  "parent_task_id": "task_abc123",        // Optional: for nested agent chains
  "on_behalf_of": "user@example.com"      // Optional: delegation context
}

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.create_task_request import CreateTaskRequest
from lumoauth_api_client.models.create_task_response import CreateTaskResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    create_task_request = lumoauth_api_client.CreateTaskRequest() # CreateTaskRequest |  (optional)

    try:
        # Create a new ephemeral task/persona for an agent.
        api_response = api_instance.create_task(org_id, create_task_request=create_task_request)
        print("The response of JitApi->create_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->create_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **create_task_request** | [**CreateTaskRequest**](CreateTaskRequest.md)|  | [optional] 

### Return type

[**CreateTaskResponse**](CreateTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Ephemeral task/persona created. |  -  |
**400** | Delegation user not found or not authorized. |  -  |
**401** | Invalid or missing agent token. |  -  |
**403** | Agent is not authorized to act on behalf of users. |  -  |
**404** | Tenant not found. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deny_request**
> DenyRequestResponse deny_request(org_id, request_id, deny_request_request=deny_request_request)

HITL: Deny a pending JIT request (requires user auth).

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.deny_request_request import DenyRequestRequest
from lumoauth_api_client.models.deny_request_response import DenyRequestResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    request_id = 'request_id_example' # str | 
    deny_request_request = lumoauth_api_client.DenyRequestRequest() # DenyRequestRequest |  (optional)

    try:
        # HITL: Deny a pending JIT request (requires user auth).
        api_response = api_instance.deny_request(org_id, request_id, deny_request_request=deny_request_request)
        print("The response of JitApi->deny_request:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->deny_request: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **request_id** | **str**|  | 
 **deny_request_request** | [**DenyRequestRequest**](DenyRequestRequest.md)|  | [optional] 

### Return type

[**DenyRequestResponse**](DenyRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Request denied. |  -  |
**400** | Invalid request (e.g. request not in a deniable state). |  -  |
**401** | Authentication required. |  -  |
**403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
**404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluate_task**
> object evaluate_task(org_id, task_id)

CAEP: Trigger continuous access evaluation for a task.

### Example

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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    task_id = 'task_id_example' # str | 

    try:
        # CAEP: Trigger continuous access evaluation for a task.
        api_response = api_instance.evaluate_task(org_id, task_id)
        print("The response of JitApi->evaluate_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->evaluate_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **task_id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Continuous access evaluation (CAEP) result for the task. |  -  |
**401** | Authentication required. |  -  |
**403** | Cross-tenant evaluation is not permitted. |  -  |
**404** | Tenant or task not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_request_status**
> GetRequestStatusResponse get_request_status(org_id, request_id)

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_request_status_response import GetRequestStatusResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    request_id = 'request_id_example' # str | 

    try:
        # Get the status of a JIT permission request.
        api_response = api_instance.get_request_status(org_id, request_id)
        print("The response of JitApi->get_request_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->get_request_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **request_id** | **str**|  | 

### Return type

[**GetRequestStatusResponse**](GetRequestStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Current status of the JIT permission request. |  -  |
**401** | Invalid or missing agent token. |  -  |
**403** | Request belongs to a different agent, or a JIT token of another task was used. |  -  |
**404** | Tenant or request not found. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_request_token**
> GetRequestTokenResponse get_request_token(org_id, request_id)

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_request_token_response import GetRequestTokenResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    request_id = 'request_id_example' # str | 

    try:
        # Exchange an approved JIT request for a downscoped token.
        api_response = api_instance.get_request_token(org_id, request_id)
        print("The response of JitApi->get_request_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->get_request_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **request_id** | **str**|  | 

### Return type

[**GetRequestTokenResponse**](GetRequestTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A downscoped JIT token (RFC 8693 token exchange). |  -  |
**401** | Invalid or missing agent token. |  -  |
**403** | Request belongs to a different agent, is not yet approved, is no longer redeemable (expired window, ended task, inactive agent/organization), or a JIT token was used. |  -  |
**404** | Tenant or request not found. |  -  |
**429** | Rate limit or agent budget exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_pending_requests**
> ListPendingRequestsResponse list_pending_requests(org_id)

Get pending HITL requests for the tenant.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.list_pending_requests_response import ListPendingRequestsResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get pending HITL requests for the tenant.
        api_response = api_instance.list_pending_requests(org_id)
        print("The response of JitApi->list_pending_requests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->list_pending_requests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**ListPendingRequestsResponse**](ListPendingRequestsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Pending HITL requests the caller may act on. |  -  |
**401** | Authentication required. |  -  |
**403** | Cross-tenant or missing jit.approve permission. |  -  |
**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **request_permission**
> RequestPermissionResponse request_permission(org_id, request_permission_request)

Request a JIT permission using RFC 9396 authorization_details.

Request body:
{
  "task_id": "task_abc123",                     // Required: task context
  "authorization_details": {                    // Required: RFC 9396 object
    "type": "file_access",
    "actions": ["read"],
    "identifier": "report_2024.pdf"
  },
  "justification": "Need to analyze Q4 data",   // Optional: human-readable
  "requested_ttl": 300,                         // Optional: 5-15 minutes (default 10)
  "callback_url": "https://..."                 // Optional: HITL notification webhook
}

Response:
- For low-risk: Immediate approval + ability to get token
- For high-risk: Returns pending status, triggers HITL workflow

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.request_permission_request import RequestPermissionRequest
from lumoauth_api_client.models.request_permission_response import RequestPermissionResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.JitApi(api_client)
    org_id = 'org_id_example' # str | 
    request_permission_request = lumoauth_api_client.RequestPermissionRequest() # RequestPermissionRequest | 

    try:
        # Request a JIT permission using RFC 9396 authorization_details.
        api_response = api_instance.request_permission(org_id, request_permission_request)
        print("The response of JitApi->request_permission:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JitApi->request_permission: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **request_permission_request** | [**RequestPermissionRequest**](RequestPermissionRequest.md)|  | 

### Return type

[**RequestPermissionResponse**](RequestPermissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Permission request created (auto-approved for low risk, otherwise pending HITL). |  -  |
**400** | Missing/invalid task_id, authorization_details, or the task is not active. |  -  |
**401** | Invalid or missing agent token. |  -  |
**403** | Task belongs to a different agent. |  -  |
**404** | Tenant or task not found. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

