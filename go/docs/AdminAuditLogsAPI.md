# \AdminAuditLogsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminAuditLogsActions**](AdminAuditLogsAPI.md#AdminAuditLogsActions) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization
[**AdminAuditLogsExport**](AdminAuditLogsAPI.md#AdminAuditLogsExport) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
[**AdminAuditLogsGet**](AdminAuditLogsAPI.md#AdminAuditLogsGet) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
[**AdminAuditLogsList**](AdminAuditLogsAPI.md#AdminAuditLogsList) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
[**AdminAuditLogsRetention**](AdminAuditLogsAPI.md#AdminAuditLogsRetention) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
[**AdminAuditLogsStats**](AdminAuditLogsAPI.md#AdminAuditLogsStats) | **Get** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
[**PatchAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#PatchAdminAuditLogsRetentionUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
[**PutAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#PutAdminAuditLogsRetentionUpdate) | **Put** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings



## AdminAuditLogsActions

> AdminAuditLogsActionsResponse AdminAuditLogsActions(ctx, orgId).Execute()

List the distinct audit action types recorded for the organization

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

> string AdminAuditLogsExport(ctx, orgId).Format(format).EventType(eventType).Action(action).ActorId(actorId).TargetType(targetType).TargetId(targetId).Severity(severity).Status(status).IpAddress(ipAddress).Search(search).TraceId(traceId).From(from).To(to).Execute()

Export audit logs as CSV (default) or JSON



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	format := "format_example" // string | csv (default) or json. (optional) (default to "csv")
	eventType := "eventType_example" // string | Exact event type, for example user.login. (optional)
	action := "action_example" // string | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
	actorId := "actorId_example" // string | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
	targetType := "targetType_example" // string | Kind of the subject of the event. Also accepted as resourceType. (optional)
	targetId := "targetId_example" // string | The subject of the event, for example the user of a login.failed entry. (optional)
	severity := "severity_example" // string |  (optional)
	status := "status_example" // string | Result of the event. (optional)
	ipAddress := "ipAddress_example" // string |  (optional)
	search := "search_example" // string | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
	traceId := "traceId_example" // string | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
	from := time.Now() // time.Time | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
	to := time.Now() // time.Time | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsExport(context.Background(), orgId).Format(format).EventType(eventType).Action(action).ActorId(actorId).TargetType(targetType).TargetId(targetId).Severity(severity).Status(status).IpAddress(ipAddress).Search(search).TraceId(traceId).From(from).To(to).Execute()
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

 **format** | **string** | csv (default) or json. | [default to &quot;csv&quot;]
 **eventType** | **string** | Exact event type, for example user.login. | 
 **action** | **string** | The short verb of the event (as GET /audit-logs/actions lists them). | 
 **actorId** | **string** | Who acted: a user, API key or agent id. Also accepted as userId. | 
 **targetType** | **string** | Kind of the subject of the event. Also accepted as resourceType. | 
 **targetId** | **string** | The subject of the event, for example the user of a login.failed entry. | 
 **severity** | **string** |  | 
 **status** | **string** | Result of the event. | 
 **ipAddress** | **string** |  | 
 **search** | **string** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | 
 **traceId** | **string** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | 
 **from** | **time.Time** | Entries at or after this time (ISO 8601). Also accepted as startDate. | 
 **to** | **time.Time** | Entries at or before this time (ISO 8601). Also accepted as endDate. | 

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

> AdminAuditLogsListResponse AdminAuditLogsList(ctx, orgId).Page(page).Limit(limit).EventType(eventType).Action(action).ActorId(actorId).TargetType(targetType).TargetId(targetId).Severity(severity).Status(status).IpAddress(ipAddress).Search(search).TraceId(traceId).From(from).To(to).Execute()

List audit log entries

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	page := int32(56) // int32 |  (optional) (default to 1)
	limit := int32(56) // int32 |  (optional) (default to 25)
	eventType := "eventType_example" // string | Exact event type, for example user.login. (optional)
	action := "action_example" // string | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
	actorId := "actorId_example" // string | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
	targetType := "targetType_example" // string | Kind of the subject of the event. Also accepted as resourceType. (optional)
	targetId := "targetId_example" // string | The subject of the event, for example the user of a login.failed entry. (optional)
	severity := "severity_example" // string |  (optional)
	status := "status_example" // string | Result of the event. (optional)
	ipAddress := "ipAddress_example" // string |  (optional)
	search := "search_example" // string | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
	traceId := "traceId_example" // string | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
	from := time.Now() // time.Time | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
	to := time.Now() // time.Time | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAuditLogsAPI.AdminAuditLogsList(context.Background(), orgId).Page(page).Limit(limit).EventType(eventType).Action(action).ActorId(actorId).TargetType(targetType).TargetId(targetId).Severity(severity).Status(status).IpAddress(ipAddress).Search(search).TraceId(traceId).From(from).To(to).Execute()
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

 **page** | **int32** |  | [default to 1]
 **limit** | **int32** |  | [default to 25]
 **eventType** | **string** | Exact event type, for example user.login. | 
 **action** | **string** | The short verb of the event (as GET /audit-logs/actions lists them). | 
 **actorId** | **string** | Who acted: a user, API key or agent id. Also accepted as userId. | 
 **targetType** | **string** | Kind of the subject of the event. Also accepted as resourceType. | 
 **targetId** | **string** | The subject of the event, for example the user of a login.failed entry. | 
 **severity** | **string** |  | 
 **status** | **string** | Result of the event. | 
 **ipAddress** | **string** |  | 
 **search** | **string** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | 
 **traceId** | **string** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | 
 **from** | **time.Time** | Entries at or after this time (ISO 8601). Also accepted as startDate. | 
 **to** | **time.Time** | Entries at or before this time (ISO 8601). Also accepted as endDate. | 

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

> AdminAuditLogsRetentionResponse PatchAdminAuditLogsRetentionUpdate(ctx, orgId).PutAdminAuditLogsRetentionUpdateRequest(putAdminAuditLogsRetentionUpdateRequest).Execute()

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
	putAdminAuditLogsRetentionUpdateRequest := *openapiclient.NewPutAdminAuditLogsRetentionUpdateRequest(int32(123)) // PutAdminAuditLogsRetentionUpdateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAuditLogsAPI.PatchAdminAuditLogsRetentionUpdate(context.Background(), orgId).PutAdminAuditLogsRetentionUpdateRequest(putAdminAuditLogsRetentionUpdateRequest).Execute()
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

 **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminAuditLogsRetentionUpdate

> AdminAuditLogsRetentionResponse PutAdminAuditLogsRetentionUpdate(ctx, orgId).PutAdminAuditLogsRetentionUpdateRequest(putAdminAuditLogsRetentionUpdateRequest).Execute()

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
	putAdminAuditLogsRetentionUpdateRequest := *openapiclient.NewPutAdminAuditLogsRetentionUpdateRequest(int32(123)) // PutAdminAuditLogsRetentionUpdateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAuditLogsAPI.PutAdminAuditLogsRetentionUpdate(context.Background(), orgId).PutAdminAuditLogsRetentionUpdateRequest(putAdminAuditLogsRetentionUpdateRequest).Execute()
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

 **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

