# \AdminMcpAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminMcpServersCreate**](AdminMcpAPI.md#AdminMcpServersCreate) | **Post** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**AdminMcpServersDelete**](AdminMcpAPI.md#AdminMcpServersDelete) | **Delete** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**AdminMcpServersGet**](AdminMcpAPI.md#AdminMcpServersGet) | **Get** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**AdminMcpServersGrantsList**](AdminMcpAPI.md#AdminMcpServersGrantsList) | **Get** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server
[**AdminMcpServersGrantsRemove**](AdminMcpAPI.md#AdminMcpServersGrantsRemove) | **Delete** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server
[**AdminMcpServersGrantsSet**](AdminMcpAPI.md#AdminMcpServersGrantsSet) | **Put** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call
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


## AdminMcpServersGrantsList

> AdminMcpServersGrantsListResponse AdminMcpServersGrantsList(ctx, orgId, serverId).AgentId(agentId).Execute()

List the agents allowed to call tools of an MCP server

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
	agentId := "agentId_example" // string | Only the grants of this agent (agentId or numeric id). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersGrantsList(context.Background(), orgId, serverId).AgentId(agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersGrantsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersGrantsList`: AdminMcpServersGrantsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersGrantsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**serverId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersGrantsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **agentId** | **string** | Only the grants of this agent (agentId or numeric id). | 

### Return type

[**AdminMcpServersGrantsListResponse**](AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminMcpServersGrantsRemove

> AdminMcpServersGrantsRemoveResponse AdminMcpServersGrantsRemove(ctx, orgId, serverId, agentId).Execute()

Remove every grant of an agent on an MCP server

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersGrantsRemove(context.Background(), orgId, serverId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersGrantsRemove``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersGrantsRemove`: AdminMcpServersGrantsRemoveResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersGrantsRemove`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**serverId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersGrantsRemoveRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminMcpServersGrantsRemoveResponse**](AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminMcpServersGrantsSet

> AdminMcpServersGrantsSetResponse AdminMcpServersGrantsSet(ctx, orgId, serverId, agentId).AdminMcpServersGrantsSetRequest(adminMcpServersGrantsSetRequest).Execute()

Set the tools of an MCP server that an agent may call

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
	agentId := "agentId_example" // string | 
	adminMcpServersGrantsSetRequest := *openapiclient.NewAdminMcpServersGrantsSetRequest() // AdminMcpServersGrantsSetRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMcpAPI.AdminMcpServersGrantsSet(context.Background(), orgId, serverId, agentId).AdminMcpServersGrantsSetRequest(adminMcpServersGrantsSetRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMcpAPI.AdminMcpServersGrantsSet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminMcpServersGrantsSet`: AdminMcpServersGrantsSetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMcpAPI.AdminMcpServersGrantsSet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**serverId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminMcpServersGrantsSetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **adminMcpServersGrantsSetRequest** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md) |  | 

### Return type

[**AdminMcpServersGrantsSetResponse**](AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
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

