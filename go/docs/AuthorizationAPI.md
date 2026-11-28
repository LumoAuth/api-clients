# \AuthorizationAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CheckAbac**](AuthorizationAPI.md#CheckAbac) | **Post** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller
[**CheckAbacBulk**](AuthorizationAPI.md#CheckAbacBulk) | **Post** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call
[**CheckAllPermissions**](AuthorizationAPI.md#CheckAllPermissions) | **Post** /api/v1/authz/check-all | Check whether the subject holds all of the permissions
[**CheckAnyPermission**](AuthorizationAPI.md#CheckAnyPermission) | **Post** /api/v1/authz/check-any | Check whether the subject holds any of the permissions
[**CheckPermission**](AuthorizationAPI.md#CheckPermission) | **Post** /api/v1/authz/check | Check one permission
[**CheckPermissionsBulk**](AuthorizationAPI.md#CheckPermissionsBulk) | **Post** /api/v1/authz/check-bulk | Check up to 100 permissions in one call
[**CheckRelation**](AuthorizationAPI.md#CheckRelation) | **Post** /api/v1/authz/zanzibar/check | Zanzibar relationship check
[**CheckRelationScoped**](AuthorizationAPI.md#CheckRelationScoped) | **Post** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check
[**Evaluate**](AuthorizationAPI.md#Evaluate) | **Post** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation
[**EvaluateBatch**](AuthorizationAPI.md#EvaluateBatch) | **Post** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations
[**ExpandRelation**](AuthorizationAPI.md#ExpandRelation) | **Post** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.
[**ExpandRelationScoped**](AuthorizationAPI.md#ExpandRelationScoped) | **Post** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).
[**GetMyAttributes**](AuthorizationAPI.md#GetMyAttributes) | **Get** /orgs/{orgId}/api/v1/abac/my-attributes | The caller&#39;s ABAC subject attributes
[**GetResourceAttributes**](AuthorizationAPI.md#GetResourceAttributes) | **Get** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource
[**ListAttributeDefinitions**](AuthorizationAPI.md#ListAttributeDefinitions) | **Get** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization
[**ListPermissions**](AuthorizationAPI.md#ListPermissions) | **Get** /api/v1/authz/permissions | List the caller&#39;s effective permissions
[**SetResourceAttribute**](AuthorizationAPI.md#SetResourceAttribute) | **Put** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute
[**SetUserAttribute**](AuthorizationAPI.md#SetUserAttribute) | **Put** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute



## CheckAbac

> CheckAbacResponse CheckAbac(ctx, orgId).CheckAbacRequest(checkAbacRequest).Execute()

Evaluate an ABAC policy decision for the caller



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
	checkAbacRequest := *openapiclient.NewCheckAbacRequest("ResourceType_example", "Action_example") // CheckAbacRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckAbac(context.Background(), orgId).CheckAbacRequest(checkAbacRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckAbac``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckAbac`: CheckAbacResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckAbac`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckAbacRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **checkAbacRequest** | [**CheckAbacRequest**](CheckAbacRequest.md) |  | 

### Return type

[**CheckAbacResponse**](CheckAbacResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckAbacBulk

> CheckAbacBulkResponse CheckAbacBulk(ctx, orgId).CheckAbacBulkRequest(checkAbacBulkRequest).Execute()

Evaluate up to 100 ABAC checks for the caller in one call



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
	checkAbacBulkRequest := *openapiclient.NewCheckAbacBulkRequest([]map[string]interface{}{map[string]interface{}{"key": interface{}(123)}}) // CheckAbacBulkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckAbacBulk(context.Background(), orgId).CheckAbacBulkRequest(checkAbacBulkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckAbacBulk``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckAbacBulk`: CheckAbacBulkResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckAbacBulk`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckAbacBulkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **checkAbacBulkRequest** | [**CheckAbacBulkRequest**](CheckAbacBulkRequest.md) |  | 

### Return type

[**CheckAbacBulkResponse**](CheckAbacBulkResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckAllPermissions

> CheckAnyPermissionResponse CheckAllPermissions(ctx).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()

Check whether the subject holds all of the permissions



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
	checkPermissionsBulkRequest := *openapiclient.NewCheckPermissionsBulkRequest([]string{"Permissions_example"}) // CheckPermissionsBulkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckAllPermissions(context.Background()).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckAllPermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckAllPermissions`: CheckAnyPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckAllPermissions`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckAllPermissionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkPermissionsBulkRequest** | [**CheckPermissionsBulkRequest**](CheckPermissionsBulkRequest.md) |  | 

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckAnyPermission

> CheckAnyPermissionResponse CheckAnyPermission(ctx).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()

Check whether the subject holds any of the permissions



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
	checkPermissionsBulkRequest := *openapiclient.NewCheckPermissionsBulkRequest([]string{"Permissions_example"}) // CheckPermissionsBulkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckAnyPermission(context.Background()).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckAnyPermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckAnyPermission`: CheckAnyPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckAnyPermission`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckAnyPermissionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkPermissionsBulkRequest** | [**CheckPermissionsBulkRequest**](CheckPermissionsBulkRequest.md) |  | 

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckPermission

> CheckPermissionResponse CheckPermission(ctx).CheckPermissionRequest(checkPermissionRequest).Execute()

Check one permission



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
	checkPermissionRequest := *openapiclient.NewCheckPermissionRequest("document.edit") // CheckPermissionRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckPermission(context.Background()).CheckPermissionRequest(checkPermissionRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckPermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckPermission`: CheckPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckPermission`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckPermissionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkPermissionRequest** | [**CheckPermissionRequest**](CheckPermissionRequest.md) |  | 

### Return type

[**CheckPermissionResponse**](CheckPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckPermissionsBulk

> CheckPermissionsBulkResponse CheckPermissionsBulk(ctx).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()

Check up to 100 permissions in one call



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
	checkPermissionsBulkRequest := *openapiclient.NewCheckPermissionsBulkRequest([]string{"Permissions_example"}) // CheckPermissionsBulkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckPermissionsBulk(context.Background()).CheckPermissionsBulkRequest(checkPermissionsBulkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckPermissionsBulk``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckPermissionsBulk`: CheckPermissionsBulkResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckPermissionsBulk`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckPermissionsBulkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkPermissionsBulkRequest** | [**CheckPermissionsBulkRequest**](CheckPermissionsBulkRequest.md) |  | 

### Return type

[**CheckPermissionsBulkResponse**](CheckPermissionsBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckRelation

> CheckRelationResponse CheckRelation(ctx).CheckRelationRequest(checkRelationRequest).Execute()

Zanzibar relationship check



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
	checkRelationRequest := *openapiclient.NewCheckRelationRequest("document:123", "viewer", "user:456") // CheckRelationRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckRelation(context.Background()).CheckRelationRequest(checkRelationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckRelation``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckRelation`: CheckRelationResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckRelation`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckRelationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkRelationRequest** | [**CheckRelationRequest**](CheckRelationRequest.md) |  | 

### Return type

[**CheckRelationResponse**](CheckRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckRelationScoped

> CheckRelationScopedResponse CheckRelationScoped(ctx, orgId).CheckRelationScopedRequest(checkRelationScopedRequest).Execute()

Zanzibar relationship check

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
	checkRelationScopedRequest := *openapiclient.NewCheckRelationScopedRequest("document:123", "viewer", "user:456") // CheckRelationScopedRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.CheckRelationScoped(context.Background(), orgId).CheckRelationScopedRequest(checkRelationScopedRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.CheckRelationScoped``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckRelationScoped`: CheckRelationScopedResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.CheckRelationScoped`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckRelationScopedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **checkRelationScopedRequest** | [**CheckRelationScopedRequest**](CheckRelationScopedRequest.md) |  | 

### Return type

[**CheckRelationScopedResponse**](CheckRelationScopedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Evaluate

> AuthZenDecision Evaluate(ctx).EvaluateRequest(evaluateRequest).Execute()

AuthZEN 1.0 access evaluation



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
	evaluateRequest := *openapiclient.NewEvaluateRequest(map[string]interface{}{"key": interface{}(123)}, map[string]interface{}{"key": interface{}(123)}, map[string]interface{}{"key": interface{}(123)}) // EvaluateRequest | AuthZEN Authorization API 1.0 evaluation request.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.Evaluate(context.Background()).EvaluateRequest(evaluateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.Evaluate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Evaluate`: AuthZenDecision
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.Evaluate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEvaluateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **evaluateRequest** | [**EvaluateRequest**](EvaluateRequest.md) | AuthZEN Authorization API 1.0 evaluation request. | 

### Return type

[**AuthZenDecision**](AuthZenDecision.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EvaluateBatch

> EvaluateBatchResponse EvaluateBatch(ctx).EvaluateBatchRequest(evaluateBatchRequest).Execute()

AuthZEN 1.0 boxcarred access evaluations



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
	evaluateBatchRequest := *openapiclient.NewEvaluateBatchRequest([]map[string]interface{}{map[string]interface{}{"key": interface{}(123)}}) // EvaluateBatchRequest | AuthZEN Authorization API 1.0 batch evaluation request.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.EvaluateBatch(context.Background()).EvaluateBatchRequest(evaluateBatchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.EvaluateBatch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EvaluateBatch`: EvaluateBatchResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.EvaluateBatch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEvaluateBatchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **evaluateBatchRequest** | [**EvaluateBatchRequest**](EvaluateBatchRequest.md) | AuthZEN Authorization API 1.0 batch evaluation request. | 

### Return type

[**EvaluateBatchResponse**](EvaluateBatchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExpandRelation

> ExpandRelationResponse ExpandRelation(ctx).ExpandRelationRequest(expandRelationRequest).Execute()

Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.



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
	expandRelationRequest := *openapiclient.NewExpandRelationRequest("document:123", "viewer") // ExpandRelationRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.ExpandRelation(context.Background()).ExpandRelationRequest(expandRelationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.ExpandRelation``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExpandRelation`: ExpandRelationResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.ExpandRelation`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExpandRelationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | 

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExpandRelationScoped

> ExpandRelationResponse ExpandRelationScoped(ctx, orgId).ExpandRelationRequest(expandRelationRequest).Execute()

Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).



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
	expandRelationRequest := *openapiclient.NewExpandRelationRequest("document:123", "viewer") // ExpandRelationRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.ExpandRelationScoped(context.Background(), orgId).ExpandRelationRequest(expandRelationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.ExpandRelationScoped``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExpandRelationScoped`: ExpandRelationResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.ExpandRelationScoped`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiExpandRelationScopedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | 

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMyAttributes

> GetMyAttributesResponse GetMyAttributes(ctx, orgId).Execute()

The caller's ABAC subject attributes



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
	resp, r, err := apiClient.AuthorizationAPI.GetMyAttributes(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.GetMyAttributes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMyAttributes`: GetMyAttributesResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.GetMyAttributes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMyAttributesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetMyAttributesResponse**](GetMyAttributesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetResourceAttributes

> GetResourceAttributesResponse GetResourceAttributes(ctx, orgId, resourceType, resourceId).Execute()

Attributes stored for a resource



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
	resourceType := "resourceType_example" // string | 
	resourceId := "resourceId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.GetResourceAttributes(context.Background(), orgId, resourceType, resourceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.GetResourceAttributes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetResourceAttributes`: GetResourceAttributesResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.GetResourceAttributes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**resourceType** | **string** |  | 
**resourceId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetResourceAttributesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**GetResourceAttributesResponse**](GetResourceAttributesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListAttributeDefinitions

> ListAttributeDefinitionsResponse ListAttributeDefinitions(ctx, orgId).Type_(type_).Execute()

Attribute definitions available to the organization



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
	type_ := "type__example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.ListAttributeDefinitions(context.Background(), orgId).Type_(type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.ListAttributeDefinitions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListAttributeDefinitions`: ListAttributeDefinitionsResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.ListAttributeDefinitions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListAttributeDefinitionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **type_** | **string** |  | 

### Return type

[**ListAttributeDefinitionsResponse**](ListAttributeDefinitionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListPermissions

> ListPermissionsResponse ListPermissions(ctx).Execute()

List the caller's effective permissions



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.ListPermissions(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.ListPermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListPermissions`: ListPermissionsResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.ListPermissions`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiListPermissionsRequest struct via the builder pattern


### Return type

[**ListPermissionsResponse**](ListPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetResourceAttribute

> SetResourceAttributeResponse SetResourceAttribute(ctx, orgId, resourceType, resourceId, attributeSlug).SetResourceAttributeRequest(setResourceAttributeRequest).Execute()

Set a resource attribute



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
	resourceType := "resourceType_example" // string | 
	resourceId := "resourceId_example" // string | 
	attributeSlug := "attributeSlug_example" // string | 
	setResourceAttributeRequest := *openapiclient.NewSetResourceAttributeRequest(interface{}(123)) // SetResourceAttributeRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.SetResourceAttribute(context.Background(), orgId, resourceType, resourceId, attributeSlug).SetResourceAttributeRequest(setResourceAttributeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.SetResourceAttribute``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SetResourceAttribute`: SetResourceAttributeResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.SetResourceAttribute`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**resourceType** | **string** |  | 
**resourceId** | **string** |  | 
**attributeSlug** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSetResourceAttributeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **setResourceAttributeRequest** | [**SetResourceAttributeRequest**](SetResourceAttributeRequest.md) |  | 

### Return type

[**SetResourceAttributeResponse**](SetResourceAttributeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetUserAttribute

> SetUserAttributeResponse SetUserAttribute(ctx, orgId, userId, attributeSlug).SetResourceAttributeRequest(setResourceAttributeRequest).Execute()

Set a user attribute



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
	userId := "userId_example" // string | 
	attributeSlug := "attributeSlug_example" // string | 
	setResourceAttributeRequest := *openapiclient.NewSetResourceAttributeRequest(interface{}(123)) // SetResourceAttributeRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AuthorizationAPI.SetUserAttribute(context.Background(), orgId, userId, attributeSlug).SetResourceAttributeRequest(setResourceAttributeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AuthorizationAPI.SetUserAttribute``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SetUserAttribute`: SetUserAttributeResponse
	fmt.Fprintf(os.Stdout, "Response from `AuthorizationAPI.SetUserAttribute`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 
**attributeSlug** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSetUserAttributeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **setResourceAttributeRequest** | [**SetResourceAttributeRequest**](SetResourceAttributeRequest.md) |  | 

### Return type

[**SetUserAttributeResponse**](SetUserAttributeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

