# JitApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**approveRequest**](JitApi.md#approveRequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth). |
| [**completeTask**](JitApi.md#completeTask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources. |
| [**createTask**](JitApi.md#createTask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent. |
| [**denyRequest**](JitApi.md#denyRequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth). |
| [**evaluateTask**](JitApi.md#evaluateTask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task. |
| [**getRequestStatus**](JitApi.md#getRequestStatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request. |
| [**getRequestToken**](JitApi.md#getRequestToken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token. |
| [**listPendingRequests**](JitApi.md#listPendingRequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant. |
| [**requestPermission**](JitApi.md#requestPermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details. |


<a id="approveRequest"></a>
# **approveRequest**
> ApproveRequestResponse approveRequest(orgId, requestId, approveRequestRequest)

HITL: Approve a pending JIT request (requires user auth).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String requestId = "requestId_example"; // String | 
    ApproveRequestRequest approveRequestRequest = new ApproveRequestRequest(); // ApproveRequestRequest | 
    try {
      ApproveRequestResponse result = apiInstance.approveRequest(orgId, requestId, approveRequestRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#approveRequest");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **requestId** | **String**|  | |
| **approveRequestRequest** | [**ApproveRequestRequest**](ApproveRequestRequest.md)|  | [optional] |

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

<a id="completeTask"></a>
# **completeTask**
> CompleteTaskResponse completeTask(orgId, taskId)

Complete a task and cleanup resources.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String taskId = "taskId_example"; // String | 
    try {
      CompleteTaskResponse result = apiInstance.completeTask(orgId, taskId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#completeTask");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **taskId** | **String**|  | |

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

<a id="createTask"></a>
# **createTask**
> CreateTaskResponse createTask(orgId, createTaskRequest)

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions. This limits the \&quot;blast radius\&quot; of any potential compromise.  Request body: {   \&quot;name\&quot;: \&quot;Research Task #123\&quot;,           // Optional: human-readable name   \&quot;type\&quot;: \&quot;research\&quot;,                     // Optional: task type for categorization   \&quot;parent_task_id\&quot;: \&quot;task_abc123\&quot;,        // Optional: for nested agent chains   \&quot;on_behalf_of\&quot;: \&quot;user@example.com\&quot;      // Optional: delegation context }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    CreateTaskRequest createTaskRequest = new CreateTaskRequest(); // CreateTaskRequest | 
    try {
      CreateTaskResponse result = apiInstance.createTask(orgId, createTaskRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#createTask");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **createTaskRequest** | [**CreateTaskRequest**](CreateTaskRequest.md)|  | [optional] |

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

<a id="denyRequest"></a>
# **denyRequest**
> DenyRequestResponse denyRequest(orgId, requestId, denyRequestRequest)

HITL: Deny a pending JIT request (requires user auth).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String requestId = "requestId_example"; // String | 
    DenyRequestRequest denyRequestRequest = new DenyRequestRequest(); // DenyRequestRequest | 
    try {
      DenyRequestResponse result = apiInstance.denyRequest(orgId, requestId, denyRequestRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#denyRequest");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **requestId** | **String**|  | |
| **denyRequestRequest** | [**DenyRequestRequest**](DenyRequestRequest.md)|  | [optional] |

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

<a id="evaluateTask"></a>
# **evaluateTask**
> Object evaluateTask(orgId, taskId)

CAEP: Trigger continuous access evaluation for a task.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String taskId = "taskId_example"; // String | 
    try {
      Object result = apiInstance.evaluateTask(orgId, taskId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#evaluateTask");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **taskId** | **String**|  | |

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

<a id="getRequestStatus"></a>
# **getRequestStatus**
> GetRequestStatusResponse getRequestStatus(orgId, requestId)

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String requestId = "requestId_example"; // String | 
    try {
      GetRequestStatusResponse result = apiInstance.getRequestStatus(orgId, requestId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#getRequestStatus");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **requestId** | **String**|  | |

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

<a id="getRequestToken"></a>
# **getRequestToken**
> GetRequestTokenResponse getRequestToken(orgId, requestId)

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String requestId = "requestId_example"; // String | 
    try {
      GetRequestTokenResponse result = apiInstance.getRequestToken(orgId, requestId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#getRequestToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **requestId** | **String**|  | |

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

<a id="listPendingRequests"></a>
# **listPendingRequests**
> ListPendingRequestsResponse listPendingRequests(orgId)

Get pending HITL requests for the tenant.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListPendingRequestsResponse result = apiInstance.listPendingRequests(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#listPendingRequests");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

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

<a id="requestPermission"></a>
# **requestPermission**
> RequestPermissionResponse requestPermission(orgId, requestPermissionRequest)

Request a JIT permission using RFC 9396 authorization_details.

Request body: {   \&quot;task_id\&quot;: \&quot;task_abc123\&quot;,                     // Required: task context   \&quot;authorization_details\&quot;: {                    // Required: RFC 9396 object     \&quot;type\&quot;: \&quot;file_access\&quot;,     \&quot;actions\&quot;: [\&quot;read\&quot;],     \&quot;identifier\&quot;: \&quot;report_2024.pdf\&quot;   },   \&quot;justification\&quot;: \&quot;Need to analyze Q4 data\&quot;,   // Optional: human-readable   \&quot;requested_ttl\&quot;: 300,                         // Optional: 5-15 minutes (default 10)   \&quot;callback_url\&quot;: \&quot;https://...\&quot;                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.JitApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    JitApi apiInstance = new JitApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    RequestPermissionRequest requestPermissionRequest = new RequestPermissionRequest(); // RequestPermissionRequest | 
    try {
      RequestPermissionResponse result = apiInstance.requestPermission(orgId, requestPermissionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JitApi#requestPermission");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **requestPermissionRequest** | [**RequestPermissionRequest**](RequestPermissionRequest.md)|  | |

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

