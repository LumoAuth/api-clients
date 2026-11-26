# \PersonalAgentProtocolAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EndPoppySession**](PersonalAgentProtocolAPI.md#EndPoppySession) | **Post** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session
[**GetPoppyDocument**](PersonalAgentProtocolAPI.md#GetPoppyDocument) | **Get** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain
[**GetPoppyProtectedResourceMetadata**](PersonalAgentProtocolAPI.md#GetPoppyProtectedResourceMetadata) | **Get** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain
[**GetPoppySessionStatus**](PersonalAgentProtocolAPI.md#GetPoppySessionStatus) | **Post** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session
[**GetPoppyTasks**](PersonalAgentProtocolAPI.md#GetPoppyTasks) | **Get** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9)
[**SendPoppyFeedback**](PersonalAgentProtocolAPI.md#SendPoppyFeedback) | **Post** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3)
[**VerifyPoppySession**](PersonalAgentProtocolAPI.md#VerifyPoppySession) | **Post** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request



## EndPoppySession

> EndPoppySessionResponse EndPoppySession(ctx, orgId).EndPoppySessionRequest(endPoppySessionRequest).Execute()

End a Session



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
	endPoppySessionRequest := *openapiclient.NewEndPoppySessionRequest("PersonalAgent_example", "Sid_example") // EndPoppySessionRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.EndPoppySession(context.Background(), orgId).EndPoppySessionRequest(endPoppySessionRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.EndPoppySession``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EndPoppySession`: EndPoppySessionResponse
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.EndPoppySession`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEndPoppySessionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | 

### Return type

[**EndPoppySessionResponse**](EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPoppyDocument

> PoppyDocument GetPoppyDocument(ctx, domain, orgId).Execute()

poppy.json of a Company domain



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
	domain := "domain_example" // string | A Company domain of the organization, such as example.com.
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.GetPoppyDocument(context.Background(), domain, orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.GetPoppyDocument``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPoppyDocument`: PoppyDocument
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.GetPoppyDocument`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domain** | **string** | A Company domain of the organization, such as example.com. | 
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPoppyDocumentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**PoppyDocument**](PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPoppyProtectedResourceMetadata

> PoppyProtectedResourceMetadata GetPoppyProtectedResourceMetadata(ctx, domain, orgId).Execute()

Protected resource metadata of a Company domain



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
	domain := "domain_example" // string | 
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.GetPoppyProtectedResourceMetadata(context.Background(), domain, orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.GetPoppyProtectedResourceMetadata``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPoppyProtectedResourceMetadata`: PoppyProtectedResourceMetadata
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.GetPoppyProtectedResourceMetadata`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domain** | **string** |  | 
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPoppyProtectedResourceMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**PoppyProtectedResourceMetadata**](PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPoppySessionStatus

> GetPoppySessionStatusResponse GetPoppySessionStatus(ctx, orgId).EndPoppySessionRequest(endPoppySessionRequest).Execute()

Look up a Session



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
	endPoppySessionRequest := *openapiclient.NewEndPoppySessionRequest("PersonalAgent_example", "Sid_example") // EndPoppySessionRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.GetPoppySessionStatus(context.Background(), orgId).EndPoppySessionRequest(endPoppySessionRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.GetPoppySessionStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPoppySessionStatus`: GetPoppySessionStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.GetPoppySessionStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPoppySessionStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | 

### Return type

[**GetPoppySessionStatusResponse**](GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPoppyTasks

> PoppyTasksResponse GetPoppyTasks(ctx, orgId).PoppySession(poppySession).PoppyVersion(poppyVersion).Execute()

Tasks endpoint (Personal Agent Protocol, section 9)



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
	poppySession := "poppySession_example" // string | The Session JWT of this request (specification 5.2).
	poppyVersion := "1.0" // string | 
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.GetPoppyTasks(context.Background(), orgId).PoppySession(poppySession).PoppyVersion(poppyVersion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.GetPoppyTasks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPoppyTasks`: PoppyTasksResponse
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.GetPoppyTasks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPoppyTasksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poppySession** | **string** | The Session JWT of this request (specification 5.2). | 
 **poppyVersion** | **string** |  | 


### Return type

[**PoppyTasksResponse**](PoppyTasksResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SendPoppyFeedback

> SendPoppyFeedback(ctx, orgId).PoppySession(poppySession).PoppyVersion(poppyVersion).SendPoppyFeedbackRequest(sendPoppyFeedbackRequest).Execute()

Feedback endpoint (Personal Agent Protocol 9.3)



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
	poppySession := "poppySession_example" // string | 
	poppyVersion := "1.0" // string | 
	orgId := "orgId_example" // string | 
	sendPoppyFeedbackRequest := *openapiclient.NewSendPoppyFeedbackRequest("Pay with a gift card", "Description_example") // SendPoppyFeedbackRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.PersonalAgentProtocolAPI.SendPoppyFeedback(context.Background(), orgId).PoppySession(poppySession).PoppyVersion(poppyVersion).SendPoppyFeedbackRequest(sendPoppyFeedbackRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.SendPoppyFeedback``: %v\n", err)
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

Other parameters are passed through a pointer to a apiSendPoppyFeedbackRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poppySession** | **string** |  | 
 **poppyVersion** | **string** |  | 

 **sendPoppyFeedbackRequest** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md) |  | 

### Return type

 (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyPoppySession

> PoppyVerifyResult VerifyPoppySession(ctx, orgId).PoppyVerifyRequest(poppyVerifyRequest).Execute()

Verify a Personal Agent's request



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
	poppyVerifyRequest := *openapiclient.NewPoppyVerifyRequest("POST", "https://api.example.com/orders/ord_7Hk2/exchanges", map[string]string{"key": "Inner_example"}) // PoppyVerifyRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PersonalAgentProtocolAPI.VerifyPoppySession(context.Background(), orgId).PoppyVerifyRequest(poppyVerifyRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PersonalAgentProtocolAPI.VerifyPoppySession``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyPoppySession`: PoppyVerifyResult
	fmt.Fprintf(os.Stdout, "Response from `PersonalAgentProtocolAPI.VerifyPoppySession`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyPoppySessionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **poppyVerifyRequest** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md) |  | 

### Return type

[**PoppyVerifyResult**](PoppyVerifyResult.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

