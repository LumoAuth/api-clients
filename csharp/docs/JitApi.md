# LumoAuth.ApiClient.Api.JitApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApproveRequest**](JitApi.md#approverequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth). |
| [**CompleteTask**](JitApi.md#completetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources. |
| [**CreateTask**](JitApi.md#createtask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent. |
| [**DenyRequest**](JitApi.md#denyrequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth). |
| [**EvaluateTask**](JitApi.md#evaluatetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task. |
| [**GetRequestStatus**](JitApi.md#getrequeststatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request. |
| [**GetRequestToken**](JitApi.md#getrequesttoken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token. |
| [**ListPendingRequests**](JitApi.md#listpendingrequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant. |
| [**RequestPermission**](JitApi.md#requestpermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details. |

<a id="approverequest"></a>
# **ApproveRequest**
> ApproveRequestResponse ApproveRequest (string orgId, string requestId, ApproveRequestRequest? approveRequestRequest = null)

HITL: Approve a pending JIT request (requires user auth).

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class ApproveRequestExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestId = "requestId_example";  // string | 
            var approveRequestRequest = new ApproveRequestRequest?(); // ApproveRequestRequest? |  (optional) 

            try
            {
                // HITL: Approve a pending JIT request (requires user auth).
                ApproveRequestResponse result = apiInstance.ApproveRequest(orgId, requestId, approveRequestRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.ApproveRequest: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ApproveRequestWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HITL: Approve a pending JIT request (requires user auth).
    ApiResponse<ApproveRequestResponse> response = apiInstance.ApproveRequestWithHttpInfo(orgId, requestId, approveRequestRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.ApproveRequestWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestId** | **string** |  |  |
| **approveRequestRequest** | [**ApproveRequestRequest?**](ApproveRequestRequest?.md) |  | [optional]  |

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
| **200** | Request approved. |  -  |
| **400** | Invalid request (e.g. request not in an approvable state). |  -  |
| **401** | Authentication required. |  -  |
| **403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
| **404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="completetask"></a>
# **CompleteTask**
> CompleteTaskResponse CompleteTask (string orgId, string taskId)

Complete a task and cleanup resources.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class CompleteTaskExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var taskId = "taskId_example";  // string | 

            try
            {
                // Complete a task and cleanup resources.
                CompleteTaskResponse result = apiInstance.CompleteTask(orgId, taskId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.CompleteTask: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CompleteTaskWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Complete a task and cleanup resources.
    ApiResponse<CompleteTaskResponse> response = apiInstance.CompleteTaskWithHttpInfo(orgId, taskId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.CompleteTaskWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **taskId** | **string** |  |  |

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
| **200** | Task completed and resources cleaned up. |  -  |
| **401** | Invalid or missing agent token. |  -  |
| **403** | Task belongs to a different agent. |  -  |
| **404** | Tenant or task not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="createtask"></a>
# **CreateTask**
> CreateTaskResponse CreateTask (string orgId, CreateTaskRequest? createTaskRequest = null)

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions. This limits the \"blast radius\" of any potential compromise.  Request body: {   \"name\": \"Research Task #123\",           // Optional: human-readable name   \"type\": \"research\",                     // Optional: task type for categorization   \"parent_task_id\": \"task_abc123\",        // Optional: for nested agent chains   \"on_behalf_of\": \"user@example.com\"      // Optional: delegation context }

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class CreateTaskExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var createTaskRequest = new CreateTaskRequest?(); // CreateTaskRequest? |  (optional) 

            try
            {
                // Create a new ephemeral task/persona for an agent.
                CreateTaskResponse result = apiInstance.CreateTask(orgId, createTaskRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.CreateTask: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateTaskWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a new ephemeral task/persona for an agent.
    ApiResponse<CreateTaskResponse> response = apiInstance.CreateTaskWithHttpInfo(orgId, createTaskRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.CreateTaskWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **createTaskRequest** | [**CreateTaskRequest?**](CreateTaskRequest?.md) |  | [optional]  |

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
| **201** | Ephemeral task/persona created. |  -  |
| **400** | Delegation user not found or not authorized. |  -  |
| **401** | Invalid or missing agent token. |  -  |
| **403** | Agent is not authorized to act on behalf of users. |  -  |
| **404** | Tenant not found. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="denyrequest"></a>
# **DenyRequest**
> DenyRequestResponse DenyRequest (string orgId, string requestId, DenyRequestRequest? denyRequestRequest = null)

HITL: Deny a pending JIT request (requires user auth).

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class DenyRequestExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestId = "requestId_example";  // string | 
            var denyRequestRequest = new DenyRequestRequest?(); // DenyRequestRequest? |  (optional) 

            try
            {
                // HITL: Deny a pending JIT request (requires user auth).
                DenyRequestResponse result = apiInstance.DenyRequest(orgId, requestId, denyRequestRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.DenyRequest: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DenyRequestWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HITL: Deny a pending JIT request (requires user auth).
    ApiResponse<DenyRequestResponse> response = apiInstance.DenyRequestWithHttpInfo(orgId, requestId, denyRequestRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.DenyRequestWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestId** | **string** |  |  |
| **denyRequestRequest** | [**DenyRequestRequest?**](DenyRequestRequest?.md) |  | [optional]  |

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
| **200** | Request denied. |  -  |
| **400** | Invalid request (e.g. request not in a deniable state). |  -  |
| **401** | Authentication required. |  -  |
| **403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
| **404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="evaluatetask"></a>
# **EvaluateTask**
> Object EvaluateTask (string orgId, string taskId)

CAEP: Trigger continuous access evaluation for a task.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class EvaluateTaskExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var taskId = "taskId_example";  // string | 

            try
            {
                // CAEP: Trigger continuous access evaluation for a task.
                Object result = apiInstance.EvaluateTask(orgId, taskId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.EvaluateTask: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the EvaluateTaskWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // CAEP: Trigger continuous access evaluation for a task.
    ApiResponse<Object> response = apiInstance.EvaluateTaskWithHttpInfo(orgId, taskId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.EvaluateTaskWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **taskId** | **string** |  |  |

### Return type

**Object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Continuous access evaluation (CAEP) result for the task. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Cross-tenant evaluation is not permitted. |  -  |
| **404** | Tenant or task not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrequeststatus"></a>
# **GetRequestStatus**
> GetRequestStatusResponse GetRequestStatus (string orgId, string requestId)

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class GetRequestStatusExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestId = "requestId_example";  // string | 

            try
            {
                // Get the status of a JIT permission request.
                GetRequestStatusResponse result = apiInstance.GetRequestStatus(orgId, requestId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.GetRequestStatus: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRequestStatusWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get the status of a JIT permission request.
    ApiResponse<GetRequestStatusResponse> response = apiInstance.GetRequestStatusWithHttpInfo(orgId, requestId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.GetRequestStatusWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestId** | **string** |  |  |

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
| **200** | Current status of the JIT permission request. |  -  |
| **401** | Invalid or missing agent token. |  -  |
| **403** | Request belongs to a different agent. |  -  |
| **404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrequesttoken"></a>
# **GetRequestToken**
> GetRequestTokenResponse GetRequestToken (string orgId, string requestId)

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class GetRequestTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestId = "requestId_example";  // string | 

            try
            {
                // Exchange an approved JIT request for a downscoped token.
                GetRequestTokenResponse result = apiInstance.GetRequestToken(orgId, requestId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.GetRequestToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRequestTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchange an approved JIT request for a downscoped token.
    ApiResponse<GetRequestTokenResponse> response = apiInstance.GetRequestTokenWithHttpInfo(orgId, requestId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.GetRequestTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestId** | **string** |  |  |

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
| **200** | A downscoped JIT token (RFC 8693 token exchange). |  -  |
| **401** | Invalid or missing agent token. |  -  |
| **403** | Request belongs to a different agent, or is not yet approved. |  -  |
| **404** | Tenant or request not found. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listpendingrequests"></a>
# **ListPendingRequests**
> ListPendingRequestsResponse ListPendingRequests (string orgId)

Get pending HITL requests for the tenant.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class ListPendingRequestsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Get pending HITL requests for the tenant.
                ListPendingRequestsResponse result = apiInstance.ListPendingRequests(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.ListPendingRequests: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListPendingRequestsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get pending HITL requests for the tenant.
    ApiResponse<ListPendingRequestsResponse> response = apiInstance.ListPendingRequestsWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.ListPendingRequestsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **200** | Pending HITL requests the caller may act on. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Cross-tenant or missing jit.approve permission. |  -  |
| **404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="requestpermission"></a>
# **RequestPermission**
> RequestPermissionResponse RequestPermission (string orgId, RequestPermissionRequest requestPermissionRequest)

Request a JIT permission using RFC 9396 authorization_details.

Request body: {   \"task_id\": \"task_abc123\",                     // Required: task context   \"authorization_details\": {                    // Required: RFC 9396 object     \"type\": \"file_access\",     \"actions\": [\"read\"],     \"identifier\": \"report_2024.pdf\"   },   \"justification\": \"Need to analyze Q4 data\",   // Optional: human-readable   \"requested_ttl\": 300,                         // Optional: 5-15 minutes (default 10)   \"callback_url\": \"https://...\"                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class RequestPermissionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new JitApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestPermissionRequest = new RequestPermissionRequest(); // RequestPermissionRequest | 

            try
            {
                // Request a JIT permission using RFC 9396 authorization_details.
                RequestPermissionResponse result = apiInstance.RequestPermission(orgId, requestPermissionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JitApi.RequestPermission: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RequestPermissionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Request a JIT permission using RFC 9396 authorization_details.
    ApiResponse<RequestPermissionResponse> response = apiInstance.RequestPermissionWithHttpInfo(orgId, requestPermissionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JitApi.RequestPermissionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestPermissionRequest** | [**RequestPermissionRequest**](RequestPermissionRequest.md) |  |  |

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
| **201** | Permission request created (auto-approved for low risk, otherwise pending HITL). |  -  |
| **400** | Missing/invalid task_id, authorization_details, or the task is not active. |  -  |
| **401** | Invalid or missing agent token. |  -  |
| **403** | Task belongs to a different agent. |  -  |
| **404** | Tenant or task not found. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

