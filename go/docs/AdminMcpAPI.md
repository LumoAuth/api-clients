# \AdminMcpAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminMcpServersCreate**](AdminMcpAPI.md#AdminMcpServersCreate) | **Post** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**AdminMcpServersDelete**](AdminMcpAPI.md#AdminMcpServersDelete) | **Delete** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**AdminMcpServersGet**](AdminMcpAPI.md#AdminMcpServersGet) | **Get** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**AdminMcpServersList**](AdminMcpAPI.md#AdminMcpServersList) | **Get** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers



## AdminMcpServersCreate

> AdminMcpServersCreateResponse AdminMcpServersCreate(ctx, orgId).Execute()

Register an MCP server



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
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersCreate`: AdminMcpServersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminMcpServersDelete

> MessageResponse AdminMcpServersDelete(ctx, orgId, serverId).Execute()

Delete an MCP server

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
	serverId := "serverId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersDelete(context.Background(), orgId, serverId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**serverId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersDeleteRequest struct via the builder pattern


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


## AdminMcpServersGet

> AdminMcpServersGetResponse AdminMcpServersGet(ctx, orgId, serverId).Execute()

Get an MCP server

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
	serverId := "serverId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersGet(context.Background(), orgId, serverId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersGet`: AdminMcpServersGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**serverId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminMcpServersGetResponse**](AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminMcpServersList

> AdminMcpServersListResponse AdminMcpServersList(ctx, orgId).Execute()

List MCP servers

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
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersList`: AdminMcpServersListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminMcpServersListResponse**](AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

