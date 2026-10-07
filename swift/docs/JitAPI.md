# JitAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveRequest**](JitAPI.md#approverequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).
[**completeTask**](JitAPI.md#completetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.
[**createTask**](JitAPI.md#createtask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.
[**denyRequest**](JitAPI.md#denyrequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).
[**evaluateTask**](JitAPI.md#evaluatetask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.
[**getRequestStatus**](JitAPI.md#getrequeststatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.
[**getRequestToken**](JitAPI.md#getrequesttoken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.
[**listPendingRequests**](JitAPI.md#listpendingrequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.
[**requestPermission**](JitAPI.md#requestpermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.


# **approveRequest**
```swift
    open class func approveRequest(orgId: String, requestId: String, approveRequestRequest: ApproveRequestRequest? = nil, completion: @escaping (_ data: ApproveRequestResponse?, _ error: Error?) -> Void)
```

HITL: Approve a pending JIT request (requires user auth).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestId = "requestId_example" // String | 
let approveRequestRequest = ApproveRequestRequest(ttl: 123, notes: "notes_example", agentMessage: "agentMessage_example") // ApproveRequestRequest |  (optional)

// HITL: Approve a pending JIT request (requires user auth).
JitAPI.approveRequest(orgId: orgId, requestId: requestId, approveRequestRequest: approveRequestRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestId** | **String** |  | 
 **approveRequestRequest** | [**ApproveRequestRequest**](ApproveRequestRequest.md) |  | [optional] 

### Return type

[**ApproveRequestResponse**](ApproveRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeTask**
```swift
    open class func completeTask(orgId: String, taskId: String, completion: @escaping (_ data: CompleteTaskResponse?, _ error: Error?) -> Void)
```

Complete a task and cleanup resources.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let taskId = "taskId_example" // String | 

// Complete a task and cleanup resources.
JitAPI.completeTask(orgId: orgId, taskId: taskId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **taskId** | **String** |  | 

### Return type

[**CompleteTaskResponse**](CompleteTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTask**
```swift
    open class func createTask(orgId: String, createTaskRequest: CreateTaskRequest? = nil, completion: @escaping (_ data: CreateTaskResponse?, _ error: Error?) -> Void)
```

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions. This limits the \"blast radius\" of any potential compromise.  Request body: {   \"name\": \"Research Task #123\",           // Optional: human-readable name   \"type\": \"research\",                     // Optional: task type for categorization   \"parent_task_id\": \"task_abc123\",        // Optional: for nested agent chains   \"on_behalf_of\": \"user@example.com\"      // Optional: delegation context }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let createTaskRequest = CreateTaskRequest(name: "name_example", type: "type_example", parentTaskId: "parentTaskId_example", onBehalfOf: "onBehalfOf_example") // CreateTaskRequest |  (optional)

// Create a new ephemeral task/persona for an agent.
JitAPI.createTask(orgId: orgId, createTaskRequest: createTaskRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **createTaskRequest** | [**CreateTaskRequest**](CreateTaskRequest.md) |  | [optional] 

### Return type

[**CreateTaskResponse**](CreateTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **denyRequest**
```swift
    open class func denyRequest(orgId: String, requestId: String, denyRequestRequest: DenyRequestRequest? = nil, completion: @escaping (_ data: DenyRequestResponse?, _ error: Error?) -> Void)
```

HITL: Deny a pending JIT request (requires user auth).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestId = "requestId_example" // String | 
let denyRequestRequest = DenyRequestRequest(reason: "reason_example", agentMessage: "agentMessage_example") // DenyRequestRequest |  (optional)

// HITL: Deny a pending JIT request (requires user auth).
JitAPI.denyRequest(orgId: orgId, requestId: requestId, denyRequestRequest: denyRequestRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestId** | **String** |  | 
 **denyRequestRequest** | [**DenyRequestRequest**](DenyRequestRequest.md) |  | [optional] 

### Return type

[**DenyRequestResponse**](DenyRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateTask**
```swift
    open class func evaluateTask(orgId: String, taskId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

CAEP: Trigger continuous access evaluation for a task.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let taskId = "taskId_example" // String | 

// CAEP: Trigger continuous access evaluation for a task.
JitAPI.evaluateTask(orgId: orgId, taskId: taskId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **taskId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRequestStatus**
```swift
    open class func getRequestStatus(orgId: String, requestId: String, completion: @escaping (_ data: GetRequestStatusResponse?, _ error: Error?) -> Void)
```

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestId = "requestId_example" // String | 

// Get the status of a JIT permission request.
JitAPI.getRequestStatus(orgId: orgId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestId** | **String** |  | 

### Return type

[**GetRequestStatusResponse**](GetRequestStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRequestToken**
```swift
    open class func getRequestToken(orgId: String, requestId: String, completion: @escaping (_ data: GetRequestTokenResponse?, _ error: Error?) -> Void)
```

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestId = "requestId_example" // String | 

// Exchange an approved JIT request for a downscoped token.
JitAPI.getRequestToken(orgId: orgId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestId** | **String** |  | 

### Return type

[**GetRequestTokenResponse**](GetRequestTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPendingRequests**
```swift
    open class func listPendingRequests(orgId: String, completion: @escaping (_ data: ListPendingRequestsResponse?, _ error: Error?) -> Void)
```

Get pending HITL requests for the tenant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get pending HITL requests for the tenant.
JitAPI.listPendingRequests(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**ListPendingRequestsResponse**](ListPendingRequestsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPermission**
```swift
    open class func requestPermission(orgId: String, requestPermissionRequest: RequestPermissionRequest, completion: @escaping (_ data: RequestPermissionResponse?, _ error: Error?) -> Void)
```

Request a JIT permission using RFC 9396 authorization_details.

Request body: {   \"task_id\": \"task_abc123\",                     // Required: task context   \"authorization_details\": {                    // Required: RFC 9396 object     \"type\": \"file_access\",     \"actions\": [\"read\"],     \"identifier\": \"report_2024.pdf\"   },   \"justification\": \"Need to analyze Q4 data\",   // Optional: human-readable   \"requested_ttl\": 300,                         // Optional: 5-15 minutes (default 10)   \"callback_url\": \"https://...\"                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestPermissionRequest = RequestPermissionRequest(taskId: "taskId_example", authorizationDetails: 123, justification: "justification_example", requestedTtl: 123, callbackUrl: "callbackUrl_example") // RequestPermissionRequest | 

// Request a JIT permission using RFC 9396 authorization_details.
JitAPI.requestPermission(orgId: orgId, requestPermissionRequest: requestPermissionRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestPermissionRequest** | [**RequestPermissionRequest**](RequestPermissionRequest.md) |  | 

### Return type

[**RequestPermissionResponse**](RequestPermissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

