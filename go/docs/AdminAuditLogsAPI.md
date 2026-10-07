# \AdminAuditLogsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminAuditLogsActions**](AdminAuditLogsAPI.md#AdminAuditLogsActions) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant
[**AdminAuditLogsExport**](AdminAuditLogsAPI.md#AdminAuditLogsExport) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
[**AdminAuditLogsGet**](AdminAuditLogsAPI.md#AdminAuditLogsGet) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
[**AdminAuditLogsList**](AdminAuditLogsAPI.md#AdminAuditLogsList) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
[**AdminAuditLogsRetention**](AdminAuditLogsAPI.md#AdminAuditLogsRetention) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
[**AdminAuditLogsStats**](AdminAuditLogsAPI.md#AdminAuditLogsStats) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
[**PatchAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#PatchAdminAuditLogsRetentionUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
[**PutAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#PutAdminAuditLogsRetentionUpdate) | **Put** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings



## AdminAuditLogsActions

> AdminAuditLogsActionsResponse AdminAuditLogsActions(ctx, orgId).Execute()

List the distinct audit action types recorded for the tenant

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
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsActions(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsActions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsActions`: AdminAuditLogsActionsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsActions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsActionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAuditLogsExport

> string AdminAuditLogsExport(ctx, orgId).Execute()

Export audit logs as CSV (default) or JSON

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
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsExport(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsExport``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsExport`: string
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsExport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsExportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAuditLogsGet

> AdminAuditLogsGetResponse AdminAuditLogsGet(ctx, orgId, logId).Execute()

Get an audit log entry

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
	logId := "logId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsGet(context.Background(), orgId, logId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsGet`: AdminAuditLogsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**logId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAuditLogsList

> AdminAuditLogsListResponse AdminAuditLogsList(ctx, orgId).Execute()

List audit log entries

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
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsList`: AdminAuditLogsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAuditLogsRetention

> AdminAuditLogsRetentionResponse AdminAuditLogsRetention(ctx, orgId).Execute()

Get audit log retention settings

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
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsRetention(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsRetention``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsRetention`: AdminAuditLogsRetentionResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsRetention`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsRetentionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAuditLogsStats

> AdminAuditLogsStatsResponse AdminAuditLogsStats(ctx, orgId).Execute()

Audit log statistics for a period (default: last 30 days)

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
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsStats(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.AdminAuditLogsStats``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAuditLogsStats`: AdminAuditLogsStatsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.AdminAuditLogsStats`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAuditLogsStatsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminAuditLogsRetentionUpdate

> AdminAuditLogsRetentionResponse PatchAdminAuditLogsRetentionUpdate(ctx, orgId).Execute()

Update audit log retention settings

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
	resp, r, err := apiClient.AdminAuditLogsAPI.PatchAdminAuditLogsRetentionUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.PatchAdminAuditLogsRetentionUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminAuditLogsRetentionUpdate`: AdminAuditLogsRetentionResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.PatchAdminAuditLogsRetentionUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminAuditLogsRetentionUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminAuditLogsRetentionUpdate

> AdminAuditLogsRetentionResponse PutAdminAuditLogsRetentionUpdate(ctx, orgId).Execute()

Update audit log retention settings

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
	resp, r, err := apiClient.AdminAuditLogsAPI.PutAdminAuditLogsRetentionUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAuditLogsAPI.PutAdminAuditLogsRetentionUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminAuditLogsRetentionUpdate`: AdminAuditLogsRetentionResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAuditLogsAPI.PutAdminAuditLogsRetentionUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminAuditLogsRetentionUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

