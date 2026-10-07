# \SsfAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateStreamConfig**](SsfAPI.md#CreateStreamConfig) | **Post** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream
[**DeleteStreamConfig**](SsfAPI.md#DeleteStreamConfig) | **Delete** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream
[**GetStreamConfig**](SsfAPI.md#GetStreamConfig) | **Get** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)
[**VerifyStream**](SsfAPI.md#VerifyStream) | **Post** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event



## CreateStreamConfig

> SsfStream CreateStreamConfig(ctx, orgId).Execute()

Create an SSF stream

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
	resp, r, err := apiClient.SsfAPI.CreateStreamConfig(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SsfAPI.CreateStreamConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateStreamConfig`: SsfStream
	fmt.Fprintf(os.Stdout, "Response from `SsfAPI.CreateStreamConfig`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateStreamConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SsfStream**](SsfStream.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteStreamConfig

> DeleteStreamConfig(ctx, orgId).StreamId(streamId).Execute()

Delete an SSF stream

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
	streamId := "streamId_example" // string | 
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.SsfAPI.DeleteStreamConfig(context.Background(), orgId).StreamId(streamId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SsfAPI.DeleteStreamConfig``: %v\n", err)
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

Other parameters are passed through a pointer to a apiDeleteStreamConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **streamId** | **string** |  | 


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


## GetStreamConfig

> GetStreamConfig200Response GetStreamConfig(ctx, orgId).StreamId(streamId).Execute()

Read SSF stream configuration(s)

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
	streamId := "streamId_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SsfAPI.GetStreamConfig(context.Background(), orgId).StreamId(streamId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SsfAPI.GetStreamConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetStreamConfig`: GetStreamConfig200Response
	fmt.Fprintf(os.Stdout, "Response from `SsfAPI.GetStreamConfig`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetStreamConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **streamId** | **string** |  | 

### Return type

[**GetStreamConfig200Response**](GetStreamConfig200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyStream

> VerifyStream(ctx, orgId).Execute()

Request a stream verification event

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
	r, err := apiClient.SsfAPI.VerifyStream(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SsfAPI.VerifyStream``: %v\n", err)
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

Other parameters are passed through a pointer to a apiVerifyStreamRequest struct via the builder pattern


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

