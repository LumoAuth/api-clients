# \AdminPersonalAgentProtocolAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminPoppyDomainCheck**](AdminPersonalAgentProtocolAPI.md#AdminPoppyDomainCheck) | **Post** /orgs/{orgId}/api/v1/admin/personal-agent-protocol/domains/check | Check a Company domain
[**AdminPoppyFeedbackList**](AdminPersonalAgentProtocolAPI.md#AdminPoppyFeedbackList) | **Get** /orgs/{orgId}/api/v1/admin/personal-agent-protocol/feedback | List feedback from personal agents
[**AdminPoppyGet**](AdminPersonalAgentProtocolAPI.md#AdminPoppyGet) | **Get** /orgs/{orgId}/api/v1/admin/personal-agent-protocol | Get the Personal Agent Protocol settings
[**AdminPoppySessionEnd**](AdminPersonalAgentProtocolAPI.md#AdminPoppySessionEnd) | **Post** /orgs/{orgId}/api/v1/admin/personal-agent-protocol/sessions/{id}/end | End a Personal Agent Protocol Session
[**AdminPoppySessionsList**](AdminPersonalAgentProtocolAPI.md#AdminPoppySessionsList) | **Get** /orgs/{orgId}/api/v1/admin/personal-agent-protocol/sessions | List Personal Agent Protocol Sessions
[**AdminPoppyUpdate**](AdminPersonalAgentProtocolAPI.md#AdminPoppyUpdate) | **Put** /orgs/{orgId}/api/v1/admin/personal-agent-protocol | Update the Personal Agent Protocol settings



## AdminPoppyDomainCheck

> AdminPoppyDomainCheckResponse AdminPoppyDomainCheck(ctx, orgId).AdminPoppyDomainCheckRequest(adminPoppyDomainCheckRequest).Execute()

Check a Company domain



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
	adminPoppyDomainCheckRequest := *openapiclient.NewAdminPoppyDomainCheckRequest("example.com") // AdminPoppyDomainCheckRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppyDomainCheck(context.Background(), orgId).AdminPoppyDomainCheckRequest(adminPoppyDomainCheckRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppyDomainCheck``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppyDomainCheck`: AdminPoppyDomainCheckResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppyDomainCheck`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppyDomainCheckRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminPoppyDomainCheckRequest** | [**AdminPoppyDomainCheckRequest**](AdminPoppyDomainCheckRequest.md) |  | 

### Return type

[**AdminPoppyDomainCheckResponse**](AdminPoppyDomainCheckResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPoppyFeedbackList

> AdminPoppyFeedbackListResponse AdminPoppyFeedbackList(ctx, orgId).Page(page).Limit(limit).Execute()

List feedback from personal agents



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
	page := int32(56) // int32 |  (optional)
	limit := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppyFeedbackList(context.Background(), orgId).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppyFeedbackList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppyFeedbackList`: AdminPoppyFeedbackListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppyFeedbackList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppyFeedbackListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **page** | **int32** |  | 
 **limit** | **int32** |  | 

### Return type

[**AdminPoppyFeedbackListResponse**](AdminPoppyFeedbackListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPoppyGet

> AdminPoppyGetResponse AdminPoppyGet(ctx, orgId).Execute()

Get the Personal Agent Protocol settings



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
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppyGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppyGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppyGet`: AdminPoppyGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppyGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppyGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminPoppyGetResponse**](AdminPoppyGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPoppySessionEnd

> AdminPoppySessionEndResponse AdminPoppySessionEnd(ctx, orgId, id).Execute()

End a Personal Agent Protocol Session



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
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppySessionEnd(context.Background(), orgId, id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppySessionEnd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppySessionEnd`: AdminPoppySessionEndResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppySessionEnd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppySessionEndRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminPoppySessionEndResponse**](AdminPoppySessionEndResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPoppySessionsList

> AdminPoppySessionsListResponse AdminPoppySessionsList(ctx, orgId).Status(status).ClientId(clientId).Page(page).Limit(limit).Execute()

List Personal Agent Protocol Sessions



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
	status := "status_example" // string |  (optional)
	clientId := "clientId_example" // string | Only the Sessions of this personal agent. (optional)
	page := int32(56) // int32 |  (optional)
	limit := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppySessionsList(context.Background(), orgId).Status(status).ClientId(clientId).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppySessionsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppySessionsList`: AdminPoppySessionsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppySessionsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppySessionsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **status** | **string** |  | 
 **clientId** | **string** | Only the Sessions of this personal agent. | 
 **page** | **int32** |  | 
 **limit** | **int32** |  | 

### Return type

[**AdminPoppySessionsListResponse**](AdminPoppySessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminPoppyUpdate

> AdminPoppyUpdateResponse AdminPoppyUpdate(ctx, orgId).AdminPoppyUpdateRequest(adminPoppyUpdateRequest).Execute()

Update the Personal Agent Protocol settings



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
	adminPoppyUpdateRequest := *openapiclient.NewAdminPoppyUpdateRequest() // AdminPoppyUpdateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminPersonalAgentProtocolAPI.AdminPoppyUpdate(context.Background(), orgId).AdminPoppyUpdateRequest(adminPoppyUpdateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminPersonalAgentProtocolAPI.AdminPoppyUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminPoppyUpdate`: AdminPoppyUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminPersonalAgentProtocolAPI.AdminPoppyUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminPoppyUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminPoppyUpdateRequest** | [**AdminPoppyUpdateRequest**](AdminPoppyUpdateRequest.md) |  | 

### Return type

[**AdminPoppyUpdateResponse**](AdminPoppyUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

