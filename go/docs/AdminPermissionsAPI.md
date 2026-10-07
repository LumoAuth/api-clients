# \AdminPermissionsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminPermissionsCreate**](AdminPermissionsAPI.md#AdminPermissionsCreate) | **Post** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant
[**AdminPermissionsDelete**](AdminPermissionsAPI.md#AdminPermissionsDelete) | **Delete** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission
[**AdminPermissionsGet**](AdminPermissionsAPI.md#AdminPermissionsGet) | **Get** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission
[**AdminPermissionsList**](AdminPermissionsAPI.md#AdminPermissionsList) | **Get** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant
[**AdminPermissionsUpdate**](AdminPermissionsAPI.md#AdminPermissionsUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission
[**AdminPermissionsUsage**](AdminPermissionsAPI.md#AdminPermissionsUsage) | **Get** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission)
[**AdminScopesCreate**](AdminPermissionsAPI.md#AdminScopesCreate) | **Post** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope
[**AdminScopesDelete**](AdminPermissionsAPI.md#AdminScopesDelete) | **Delete** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope
[**AdminScopesList**](AdminPermissionsAPI.md#AdminScopesList) | **Get** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes



## AdminPermissionsCreate

> AdminPermissionsCreateResponse AdminPermissionsCreate(ctx, orgId).Execute()

Create a custom permission for the tenant

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
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsCreate`: AdminPermissionsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPermissionsDelete

> MessageResponse AdminPermissionsDelete(ctx, orgId, permissionId).Execute()

Delete a custom permission

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
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsDelete(context.Background(), orgId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsDeleteRequest struct via the builder pattern


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


## AdminPermissionsGet

> AdminPermissionsGetResponse AdminPermissionsGet(ctx, orgId, permissionId).Execute()

Get a single permission

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
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsGet(context.Background(), orgId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsGet`: AdminPermissionsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminPermissionsGetResponse**](AdminPermissionsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPermissionsList

> AdminPermissionsListResponse AdminPermissionsList(ctx, orgId).Execute()

List all available permissions for the tenant

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
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsList`: AdminPermissionsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminPermissionsListResponse**](AdminPermissionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPermissionsUpdate

> AdminPermissionsCreateResponse AdminPermissionsUpdate(ctx, orgId, permissionId).Execute()

Update a permission

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
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsUpdate(context.Background(), orgId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsUpdate`: AdminPermissionsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPermissionsUsage

> AdminPermissionsUsageResponse AdminPermissionsUsage(ctx, orgId, permissionId).Execute()

Get permission usage (roles assigned to this permission)

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
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPermissionsAPI.AdminPermissionsUsage(context.Background(), orgId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminPermissionsUsage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPermissionsUsage`: AdminPermissionsUsageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminPermissionsUsage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPermissionsUsageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminPermissionsUsageResponse**](AdminPermissionsUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminScopesCreate

> AdminScopesCreateResponse AdminScopesCreate(ctx, orgId).Execute()

Create a custom OAuth scope

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
	resp, r, err := apiClient.AdminPermissionsAPI.AdminScopesCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminScopesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminScopesCreate`: AdminScopesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminScopesCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminScopesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminScopesCreateResponse**](AdminScopesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminScopesDelete

> MessageResponse AdminScopesDelete(ctx, orgId, scopeId).Execute()

Delete a custom OAuth scope

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
	scopeId := "scopeId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPermissionsAPI.AdminScopesDelete(context.Background(), orgId, scopeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminScopesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminScopesDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminScopesDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**scopeId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminScopesDeleteRequest struct via the builder pattern


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


## AdminScopesList

> AdminScopesListResponse AdminScopesList(ctx, orgId).Execute()

List OAuth scopes

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
	resp, r, err := apiClient.AdminPermissionsAPI.AdminScopesList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPermissionsAPI.AdminScopesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminScopesList`: AdminScopesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPermissionsAPI.AdminScopesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminScopesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminScopesListResponse**](AdminScopesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

