# \JitAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApproveRequest**](JitAPI.md#ApproveRequest) | **Post** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth).
[**CompleteTask**](JitAPI.md#CompleteTask) | **Post** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources.
[**CreateTask**](JitAPI.md#CreateTask) | **Post** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent.
[**DenyRequest**](JitAPI.md#DenyRequest) | **Post** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth).
[**EvaluateTask**](JitAPI.md#EvaluateTask) | **Post** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task.
[**GetRequestStatus**](JitAPI.md#GetRequestStatus) | **Get** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request.
[**GetRequestToken**](JitAPI.md#GetRequestToken) | **Post** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token.
[**ListPendingRequests**](JitAPI.md#ListPendingRequests) | **Get** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant.
[**RequestPermission**](JitAPI.md#RequestPermission) | **Post** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details.



## ApproveRequest

> ApproveRequestResponse ApproveRequest(ctx, orgId, requestId).ApproveRequestRequest(approveRequestRequest).Execute()

HITL: Approve a pending JIT request (requires user auth).

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestId := "requestId_example" // string | 
	approveRequestRequest := *openapiclient.NewApproveRequestRequest() // ApproveRequestRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.ApproveRequest(context.Background(), orgId, requestId).ApproveRequestRequest(approveRequestRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.ApproveRequest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApproveRequest`: ApproveRequestResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.ApproveRequest`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**requestId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApproveRequestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **approveRequestRequest** | [**ApproveRequestRequest**](ApproveRequestRequest.md) |  | 

### Return type

[**ApproveRequestResponse**](ApproveRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CompleteTask

> CompleteTaskResponse CompleteTask(ctx, orgId, taskId).Execute()

Complete a task and cleanup resources.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	taskId := "taskId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.CompleteTask(context.Background(), orgId, taskId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.CompleteTask``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CompleteTask`: CompleteTaskResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.CompleteTask`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**taskId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCompleteTaskRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CompleteTaskResponse**](CompleteTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateTask

> CreateTaskResponse CreateTask(ctx, orgId).CreateTaskRequest(createTaskRequest).Execute()

Create a new ephemeral task/persona for an agent.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	createTaskRequest := *openapiclient.NewCreateTaskRequest() // CreateTaskRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.CreateTask(context.Background(), orgId).CreateTaskRequest(createTaskRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.CreateTask``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateTask`: CreateTaskResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.CreateTask`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateTaskRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createTaskRequest** | [**CreateTaskRequest**](CreateTaskRequest.md) |  | 

### Return type

[**CreateTaskResponse**](CreateTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DenyRequest

> DenyRequestResponse DenyRequest(ctx, orgId, requestId).DenyRequestRequest(denyRequestRequest).Execute()

HITL: Deny a pending JIT request (requires user auth).

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestId := "requestId_example" // string | 
	denyRequestRequest := *openapiclient.NewDenyRequestRequest() // DenyRequestRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.DenyRequest(context.Background(), orgId, requestId).DenyRequestRequest(denyRequestRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.DenyRequest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DenyRequest`: DenyRequestResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.DenyRequest`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**requestId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDenyRequestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **denyRequestRequest** | [**DenyRequestRequest**](DenyRequestRequest.md) |  | 

### Return type

[**DenyRequestResponse**](DenyRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EvaluateTask

> map[string]interface{} EvaluateTask(ctx, orgId, taskId).Execute()

CAEP: Trigger continuous access evaluation for a task.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	taskId := "taskId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.EvaluateTask(context.Background(), orgId, taskId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.EvaluateTask``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EvaluateTask`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.EvaluateTask`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**taskId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEvaluateTaskRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

**map[string]interface{}**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRequestStatus

> GetRequestStatusResponse GetRequestStatus(ctx, orgId, requestId).Execute()

Get the status of a JIT permission request.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestId := "requestId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.GetRequestStatus(context.Background(), orgId, requestId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.GetRequestStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetRequestStatus`: GetRequestStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.GetRequestStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**requestId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRequestStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GetRequestStatusResponse**](GetRequestStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRequestToken

> GetRequestTokenResponse GetRequestToken(ctx, orgId, requestId).Execute()

Exchange an approved JIT request for a downscoped token.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestId := "requestId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.GetRequestToken(context.Background(), orgId, requestId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.GetRequestToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetRequestToken`: GetRequestTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.GetRequestToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**requestId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRequestTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GetRequestTokenResponse**](GetRequestTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListPendingRequests

> ListPendingRequestsResponse ListPendingRequests(ctx, orgId).Execute()

Get pending HITL requests for the tenant.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.ListPendingRequests(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.ListPendingRequests``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListPendingRequests`: ListPendingRequestsResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.ListPendingRequests`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListPendingRequestsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListPendingRequestsResponse**](ListPendingRequestsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RequestPermission

> RequestPermissionResponse RequestPermission(ctx, orgId).RequestPermissionRequest(requestPermissionRequest).Execute()

Request a JIT permission using RFC 9396 authorization_details.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestPermissionRequest := *openapiclient.NewRequestPermissionRequest() // RequestPermissionRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JitAPI.RequestPermission(context.Background(), orgId).RequestPermissionRequest(requestPermissionRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JitAPI.RequestPermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RequestPermission`: RequestPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `JitAPI.RequestPermission`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRequestPermissionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestPermissionRequest** | [**RequestPermissionRequest**](RequestPermissionRequest.md) |  | 

### Return type

[**RequestPermissionResponse**](RequestPermissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

