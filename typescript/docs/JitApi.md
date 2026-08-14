# JitApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**approveRequest**](#approverequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).|
|[**completeTask**](#completetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.|
|[**createTask**](#createtask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.|
|[**denyRequest**](#denyrequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).|
|[**evaluateTask**](#evaluatetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.|
|[**getRequestStatus**](#getrequeststatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.|
|[**getRequestToken**](#getrequesttoken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.|
|[**listPendingRequests**](#listpendingrequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.|
|[**requestPermission**](#requestpermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.|

# **approveRequest**
> ApproveRequestResponse approveRequest()


### Example

```typescript
import {
    JitApi,
    Configuration,
    ApproveRequestRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let requestId: string; // (default to undefined)
let approveRequestRequest: ApproveRequestRequest; // (optional)

const { status, data } = await apiInstance.approveRequest(
    orgId,
    requestId,
    approveRequestRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **approveRequestRequest** | **ApproveRequestRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **requestId** | [**string**] |  | defaults to undefined|


### Return type

**ApproveRequestResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Request approved. |  -  |
|**400** | Invalid request (e.g. request not in an approvable state). |  -  |
|**401** | Authentication required. |  -  |
|**403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
|**404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeTask**
> CompleteTaskResponse completeTask()


### Example

```typescript
import {
    JitApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let taskId: string; // (default to undefined)

const { status, data } = await apiInstance.completeTask(
    orgId,
    taskId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **taskId** | [**string**] |  | defaults to undefined|


### Return type

**CompleteTaskResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Task completed and resources cleaned up. |  -  |
|**401** | Invalid or missing agent token. |  -  |
|**403** | Task belongs to a different agent. |  -  |
|**404** | Tenant or task not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTask**
> CreateTaskResponse createTask()

Each task gets a unique sub-identity with isolated permissions. This limits the \"blast radius\" of any potential compromise.  Request body: {   \"name\": \"Research Task #123\",           // Optional: human-readable name   \"type\": \"research\",                     // Optional: task type for categorization   \"parent_task_id\": \"task_abc123\",        // Optional: for nested agent chains   \"on_behalf_of\": \"user@example.com\"      // Optional: delegation context }

### Example

```typescript
import {
    JitApi,
    Configuration,
    CreateTaskRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let createTaskRequest: CreateTaskRequest; // (optional)

const { status, data } = await apiInstance.createTask(
    orgId,
    createTaskRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **createTaskRequest** | **CreateTaskRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CreateTaskResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Ephemeral task/persona created. |  -  |
|**400** | Delegation user not found or not authorized. |  -  |
|**401** | Invalid or missing agent token. |  -  |
|**403** | Agent is not authorized to act on behalf of users. |  -  |
|**404** | Tenant not found. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **denyRequest**
> DenyRequestResponse denyRequest()


### Example

```typescript
import {
    JitApi,
    Configuration,
    DenyRequestRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let requestId: string; // (default to undefined)
let denyRequestRequest: DenyRequestRequest; // (optional)

const { status, data } = await apiInstance.denyRequest(
    orgId,
    requestId,
    denyRequestRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **denyRequestRequest** | **DenyRequestRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **requestId** | [**string**] |  | defaults to undefined|


### Return type

**DenyRequestResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Request denied. |  -  |
|**400** | Invalid request (e.g. request not in a deniable state). |  -  |
|**401** | Authentication required. |  -  |
|**403** | Cross-tenant, missing jit.approve permission, or agent access denied. |  -  |
|**404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateTask**
> object evaluateTask()


### Example

```typescript
import {
    JitApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let taskId: string; // (default to undefined)

const { status, data } = await apiInstance.evaluateTask(
    orgId,
    taskId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **taskId** | [**string**] |  | defaults to undefined|


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
|**200** | Continuous access evaluation (CAEP) result for the task. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Cross-tenant evaluation is not permitted. |  -  |
|**404** | Tenant or task not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRequestStatus**
> GetRequestStatusResponse getRequestStatus()

Agents poll this endpoint while waiting for HITL approval.

### Example

```typescript
import {
    JitApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let requestId: string; // (default to undefined)

const { status, data } = await apiInstance.getRequestStatus(
    orgId,
    requestId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **requestId** | [**string**] |  | defaults to undefined|


### Return type

**GetRequestStatusResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Current status of the JIT permission request. |  -  |
|**401** | Invalid or missing agent token. |  -  |
|**403** | Request belongs to a different agent. |  -  |
|**404** | Tenant or request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRequestToken**
> GetRequestTokenResponse getRequestToken()

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example

```typescript
import {
    JitApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let requestId: string; // (default to undefined)

const { status, data } = await apiInstance.getRequestToken(
    orgId,
    requestId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **requestId** | [**string**] |  | defaults to undefined|


### Return type

**GetRequestTokenResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A downscoped JIT token (RFC 8693 token exchange). |  -  |
|**401** | Invalid or missing agent token. |  -  |
|**403** | Request belongs to a different agent, or is not yet approved. |  -  |
|**404** | Tenant or request not found. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPendingRequests**
> ListPendingRequestsResponse listPendingRequests()


### Example

```typescript
import {
    JitApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listPendingRequests(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListPendingRequestsResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Pending HITL requests the caller may act on. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Cross-tenant or missing jit.approve permission. |  -  |
|**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPermission**
> RequestPermissionResponse requestPermission(requestPermissionRequest)

Request body: {   \"task_id\": \"task_abc123\",                     // Required: task context   \"authorization_details\": {                    // Required: RFC 9396 object     \"type\": \"file_access\",     \"actions\": [\"read\"],     \"identifier\": \"report_2024.pdf\"   },   \"justification\": \"Need to analyze Q4 data\",   // Optional: human-readable   \"requested_ttl\": 300,                         // Optional: 5-15 minutes (default 10)   \"callback_url\": \"https://...\"                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Example

```typescript
import {
    JitApi,
    Configuration,
    RequestPermissionRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new JitApi(configuration);

let orgId: string; // (default to undefined)
let requestPermissionRequest: RequestPermissionRequest; //

const { status, data } = await apiInstance.requestPermission(
    orgId,
    requestPermissionRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **requestPermissionRequest** | **RequestPermissionRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**RequestPermissionResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Permission request created (auto-approved for low risk, otherwise pending HITL). |  -  |
|**400** | Missing/invalid task_id, authorization_details, or the task is not active. |  -  |
|**401** | Invalid or missing agent token. |  -  |
|**403** | Task belongs to a different agent. |  -  |
|**404** | Tenant or task not found. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

