# \AdminAgentsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminAgentsActivate**](AdminAgentsAPI.md#AdminAgentsActivate) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
[**AdminAgentsAgentsDisable**](AdminAgentsAPI.md#AdminAgentsAgentsDisable) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
[**AdminAgentsAgentsEnable**](AdminAgentsAPI.md#AdminAgentsAgentsEnable) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
[**AdminAgentsAgentsRotateKey**](AdminAgentsAPI.md#AdminAgentsAgentsRotateKey) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
[**AdminAgentsCreate**](AdminAgentsAPI.md#AdminAgentsCreate) | **Post** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
[**AdminAgentsDeactivate**](AdminAgentsAPI.md#AdminAgentsDeactivate) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
[**AdminAgentsDelete**](AdminAgentsAPI.md#AdminAgentsDelete) | **Delete** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
[**AdminAgentsGenerateToken**](AdminAgentsAPI.md#AdminAgentsGenerateToken) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
[**AdminAgentsGet**](AdminAgentsAPI.md#AdminAgentsGet) | **Get** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
[**AdminAgentsGetScopes**](AdminAgentsAPI.md#AdminAgentsGetScopes) | **Get** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
[**AdminAgentsList**](AdminAgentsAPI.md#AdminAgentsList) | **Get** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
[**AdminAgentsRevokeKey**](AdminAgentsAPI.md#AdminAgentsRevokeKey) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
[**AdminAgentsRotateCredentials**](AdminAgentsAPI.md#AdminAgentsRotateCredentials) | **Post** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
[**AdminAgentsSetScopes**](AdminAgentsAPI.md#AdminAgentsSetScopes) | **Put** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
[**PatchAdminAgentsUpdate**](AdminAgentsAPI.md#PatchAdminAgentsUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
[**PutAdminAgentsUpdate**](AdminAgentsAPI.md#PutAdminAgentsUpdate) | **Put** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent



## AdminAgentsActivate

> AdminAgentsActivateResponse AdminAgentsActivate(ctx, orgId, agentId).Execute()

Activate an agent

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsActivate(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsActivate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsActivate`: AdminAgentsActivateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsActivate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsActivateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsAgentsDisable

> AdminAgentsAgentsDisableResponse AdminAgentsAgentsDisable(ctx, orgId, agentId).Execute()

Disable agent

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsAgentsDisable(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsAgentsDisable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsAgentsDisable`: AdminAgentsAgentsDisableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsAgentsDisable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsAgentsDisableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsAgentsEnable

> AdminAgentsAgentsEnableResponse AdminAgentsAgentsEnable(ctx, orgId, agentId).Execute()

Enable agent

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsAgentsEnable(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsAgentsEnable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsAgentsEnable`: AdminAgentsAgentsEnableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsAgentsEnable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsAgentsEnableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsAgentsRotateKey

> AdminAgentsAgentsRotateKeyResponse AdminAgentsAgentsRotateKey(ctx, orgId, agentId).Execute()

Rotate agent API key

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsAgentsRotateKey(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsAgentsRotateKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsAgentsRotateKey`: AdminAgentsAgentsRotateKeyResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsAgentsRotateKey`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsAgentsRotateKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsCreate

> AdminAgentsCreateResponse AdminAgentsCreate(ctx, orgId).AdminAgentsCreateRequest(adminAgentsCreateRequest).Execute()

Create a new agent

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
	adminAgentsCreateRequest := *openapiclient.NewAdminAgentsCreateRequest() // AdminAgentsCreateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsCreate(context.Background(), orgId).AdminAgentsCreateRequest(adminAgentsCreateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsCreate`: AdminAgentsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminAgentsCreateRequest** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md) |  | 

### Return type

[**AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsDeactivate

> AdminAgentsDeactivateResponse AdminAgentsDeactivate(ctx, orgId, agentId).Execute()

Deactivate an agent

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsDeactivate(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsDeactivate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsDeactivate`: AdminAgentsDeactivateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsDeactivate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsDeactivateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsDelete

> MessageResponse AdminAgentsDelete(ctx, orgId, agentId).Execute()

Delete an agent

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsDelete(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsDeleteRequest struct via the builder pattern


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


## AdminAgentsGenerateToken

> AdminAgentsGenerateTokenResponse AdminAgentsGenerateToken(ctx, orgId, agentId).AdminAgentsGenerateTokenRequest(adminAgentsGenerateTokenRequest).Execute()

Generate a token for the agent

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
	agentId := "agentId_example" // string | 
	adminAgentsGenerateTokenRequest := *openapiclient.NewAdminAgentsGenerateTokenRequest() // AdminAgentsGenerateTokenRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsGenerateToken(context.Background(), orgId, agentId).AdminAgentsGenerateTokenRequest(adminAgentsGenerateTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsGenerateToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsGenerateToken`: AdminAgentsGenerateTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsGenerateToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsGenerateTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **adminAgentsGenerateTokenRequest** | [**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md) |  | 

### Return type

[**AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsGet

> AdminAgentsGetResponse AdminAgentsGet(ctx, orgId, agentId).Execute()

Get a single agent by ID or agentId

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsGet(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsGet`: AdminAgentsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsGetScopes

> AdminAgentsGetScopesResponse AdminAgentsGetScopes(ctx, orgId, agentId).Execute()

Get agent scopes/capabilities

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsGetScopes(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsGetScopes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsGetScopes`: AdminAgentsGetScopesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsGetScopes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsGetScopesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsList

> AdminAgentsListResponse AdminAgentsList(ctx, orgId).Execute()

List all agents in the tenant

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
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsList`: AdminAgentsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsRevokeKey

> AdminAgentsRevokeKeyResponse AdminAgentsRevokeKey(ctx, orgId, agentId).Execute()

Revoke agent API key (nullify it so it can no longer authenticate)

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsRevokeKey(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsRevokeKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsRevokeKey`: AdminAgentsRevokeKeyResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsRevokeKey`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsRevokeKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsRotateCredentials

> AdminAgentsRotateCredentialsResponse AdminAgentsRotateCredentials(ctx, orgId, agentId).Execute()

Rotate agent credentials

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsRotateCredentials(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsRotateCredentials``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsRotateCredentials`: AdminAgentsRotateCredentialsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsRotateCredentials`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsRotateCredentialsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAgentsSetScopes

> AdminAgentsSetScopesResponse AdminAgentsSetScopes(ctx, orgId, agentId).AdminAgentsSetScopesRequest(adminAgentsSetScopesRequest).Execute()

Update agent scopes/capabilities

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
	agentId := "agentId_example" // string | 
	adminAgentsSetScopesRequest := *openapiclient.NewAdminAgentsSetScopesRequest() // AdminAgentsSetScopesRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.AdminAgentsSetScopes(context.Background(), orgId, agentId).AdminAgentsSetScopesRequest(adminAgentsSetScopesRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.AdminAgentsSetScopes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAgentsSetScopes`: AdminAgentsSetScopesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.AdminAgentsSetScopes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAgentsSetScopesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **adminAgentsSetScopesRequest** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md) |  | 

### Return type

[**AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminAgentsUpdate

> PutAdminAgentsUpdateResponse PatchAdminAgentsUpdate(ctx, orgId, agentId).PutAdminAgentsUpdateRequest(putAdminAgentsUpdateRequest).Execute()

Update an existing agent

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
	agentId := "agentId_example" // string | 
	putAdminAgentsUpdateRequest := *openapiclient.NewPutAdminAgentsUpdateRequest() // PutAdminAgentsUpdateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.PatchAdminAgentsUpdate(context.Background(), orgId, agentId).PutAdminAgentsUpdateRequest(putAdminAgentsUpdateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.PatchAdminAgentsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminAgentsUpdate`: PutAdminAgentsUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.PatchAdminAgentsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminAgentsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminAgentsUpdate

> PutAdminAgentsUpdateResponse PutAdminAgentsUpdate(ctx, orgId, agentId).PutAdminAgentsUpdateRequest(putAdminAgentsUpdateRequest).Execute()

Update an existing agent

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
	agentId := "agentId_example" // string | 
	putAdminAgentsUpdateRequest := *openapiclient.NewPutAdminAgentsUpdateRequest() // PutAdminAgentsUpdateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminAgentsAPI.PutAdminAgentsUpdate(context.Background(), orgId, agentId).PutAdminAgentsUpdateRequest(putAdminAgentsUpdateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminAgentsAPI.PutAdminAgentsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminAgentsUpdate`: PutAdminAgentsUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminAgentsAPI.PutAdminAgentsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminAgentsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

