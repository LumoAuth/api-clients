# \TokenVaultAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetConnectionToken**](TokenVaultAPI.md#GetConnectionToken) | **Post** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection
[**ListConnections**](TokenVaultAPI.md#ListConnections) | **Get** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use



## GetConnectionToken

> GetConnectionTokenResponse GetConnectionToken(ctx, orgId, connectionId).GetConnectionTokenRequest(getConnectionTokenRequest).Execute()

Fetch a live third-party access token for a connection



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
	connectionId := "connectionId_example" // string | 
	getConnectionTokenRequest := *openapiclient.NewGetConnectionTokenRequest() // GetConnectionTokenRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TokenVaultAPI.GetConnectionToken(context.Background(), orgId, connectionId).GetConnectionTokenRequest(getConnectionTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TokenVaultAPI.GetConnectionToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetConnectionToken`: GetConnectionTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `TokenVaultAPI.GetConnectionToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**connectionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetConnectionTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **getConnectionTokenRequest** | [**GetConnectionTokenRequest**](GetConnectionTokenRequest.md) |  | 

### Return type

[**GetConnectionTokenResponse**](GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListConnections

> ListConnectionsResponse ListConnections(ctx, orgId).Execute()

List the outbound connections this agent may use



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
	resp, r, err := apiClient.TokenVaultAPI.ListConnections(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TokenVaultAPI.ListConnections``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListConnections`: ListConnectionsResponse
	fmt.Fprintf(os.Stdout, "Response from `TokenVaultAPI.ListConnections`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListConnectionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListConnectionsResponse**](ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

