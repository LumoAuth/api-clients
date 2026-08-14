# \AdminSandboxAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminSandboxDestroy**](AdminSandboxAPI.md#AdminSandboxDestroy) | **Post** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
[**AdminSandboxList**](AdminSandboxAPI.md#AdminSandboxList) | **Get** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller&#39;s active sandbox tenants (their own only).
[**AdminSandboxSpawn**](AdminSandboxAPI.md#AdminSandboxSpawn) | **Post** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\&quot;name\&quot;?: \&quot;feature-foo\&quot;, \&quot;ttl_hours\&quot;?: 24}



## AdminSandboxDestroy

> AdminSandboxDestroy(ctx, orgId, sandboxSlug).Execute()

POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.

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
	r, err := apiClient.AdminSandboxAPI.AdminSandboxDestroy(context.Background(), orgId, sandboxSlug).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxDestroy``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSandboxList

> AdminSandboxList(ctx, orgId).Execute()

GET / Lists the caller's active sandbox tenants (their own only).

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
	r, err := apiClient.AdminSandboxAPI.AdminSandboxList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSandboxSpawn

> AdminSandboxSpawn(ctx, orgId).Execute()

POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}

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
	r, err := apiClient.AdminSandboxAPI.AdminSandboxSpawn(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSandboxAPI.AdminSandboxSpawn``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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


### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

