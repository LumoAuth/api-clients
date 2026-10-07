# \AdminSandboxAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminSandboxDestroy**](AdminSandboxAPI.md#AdminSandboxDestroy) | **Post** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
[**AdminSandboxList**](AdminSandboxAPI.md#AdminSandboxList) | **Get** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants
[**AdminSandboxSpawn**](AdminSandboxAPI.md#AdminSandboxSpawn) | **Post** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant



## AdminSandboxDestroy

> MessageResponse AdminSandboxDestroy(ctx, orgId, sandboxSlug).Execute()

Destroy a sandbox tenant

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
	sandboxSlug := "sandboxSlug_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSandboxAPI.AdminSandboxDestroy(context.Background(), orgId, sandboxSlug).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxDestroy``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSandboxDestroy`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSandboxAPI.AdminSandboxDestroy`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**sandboxSlug** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSandboxDestroyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSandboxList

> AdminSandboxListResponse AdminSandboxList(ctx, orgId).Execute()

List the caller's sandbox tenants

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
	resp, r, err := apiClient.AdminSandboxAPI.AdminSandboxList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSandboxList`: AdminSandboxListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSandboxAPI.AdminSandboxList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSandboxListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSandboxSpawn

> AdminSandboxSpawnResponse AdminSandboxSpawn(ctx, orgId).AdminSandboxSpawnRequest(adminSandboxSpawnRequest).Execute()

Spawn a sandbox tenant

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
	adminSandboxSpawnRequest := *openapiclient.NewAdminSandboxSpawnRequest() // AdminSandboxSpawnRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSandboxAPI.AdminSandboxSpawn(context.Background(), orgId).AdminSandboxSpawnRequest(adminSandboxSpawnRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxSpawn``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSandboxSpawn`: AdminSandboxSpawnResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSandboxAPI.AdminSandboxSpawn`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSandboxSpawnRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminSandboxSpawnRequest** | [**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md) |  | 

### Return type

[**AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

