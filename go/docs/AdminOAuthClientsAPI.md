# \AdminOAuthClientsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateClient**](AdminOAuthClientsAPI.md#CreateClient) | **Post** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client
[**DeleteClient**](AdminOAuthClientsAPI.md#DeleteClient) | **Delete** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
[**DisableClient**](AdminOAuthClientsAPI.md#DisableClient) | **Post** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client
[**EnableClient**](AdminOAuthClientsAPI.md#EnableClient) | **Post** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client
[**GetClient**](AdminOAuthClientsAPI.md#GetClient) | **Get** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client
[**ListClientScopes**](AdminOAuthClientsAPI.md#ListClientScopes) | **Get** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client
[**ListClients**](AdminOAuthClientsAPI.md#ListClients) | **Get** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients
[**PatchClient**](AdminOAuthClientsAPI.md#PatchClient) | **Patch** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client
[**RotateClientSecret**](AdminOAuthClientsAPI.md#RotateClientSecret) | **Post** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret
[**SetClientScopes**](AdminOAuthClientsAPI.md#SetClientScopes) | **Put** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client
[**UpdateClient**](AdminOAuthClientsAPI.md#UpdateClient) | **Put** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client



## CreateClient

> CreateClientResponse CreateClient(ctx, orgId).Execute()

Create an OAuth client

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
	resp, r, err := apiClient.AdminOAuthClientsAPI.CreateClient(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.CreateClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateClient`: CreateClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.CreateClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CreateClientResponse**](CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteClient

> MessageResponse DeleteClient(ctx, orgId, clientId).Execute()

Delete an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.DeleteClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.DeleteClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteClient`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.DeleteClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteClientRequest struct via the builder pattern


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


## DisableClient

> UpdateClientResponse DisableClient(ctx, orgId, clientId).Execute()

Disable an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.DisableClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.DisableClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DisableClient`: UpdateClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.DisableClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDisableClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EnableClient

> UpdateClientResponse EnableClient(ctx, orgId, clientId).Execute()

Enable an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.EnableClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.EnableClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnableClient`: UpdateClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.EnableClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEnableClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetClient

> GetClientResponse GetClient(ctx, orgId, clientId).Execute()

Get an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.GetClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.GetClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetClient`: GetClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.GetClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GetClientResponse**](GetClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListClientScopes

> ListClientScopesResponse ListClientScopes(ctx, orgId, clientId).Execute()

List the scopes granted to an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.ListClientScopes(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.ListClientScopes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListClientScopes`: ListClientScopesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.ListClientScopes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListClientScopesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**ListClientScopesResponse**](ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListClients

> ListClientsResponse ListClients(ctx, orgId).Execute()

List OAuth clients

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
	resp, r, err := apiClient.AdminOAuthClientsAPI.ListClients(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.ListClients``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListClients`: ListClientsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.ListClients`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListClientsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListClientsResponse**](ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchClient

> UpdateClientResponse PatchClient(ctx, orgId, clientId).Execute()

Update an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.PatchClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.PatchClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchClient`: UpdateClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.PatchClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RotateClientSecret

> RotateClientSecretResponse RotateClientSecret(ctx, orgId, clientId).Execute()

Rotate an OAuth client secret

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.RotateClientSecret(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.RotateClientSecret``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RotateClientSecret`: RotateClientSecretResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.RotateClientSecret`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRotateClientSecretRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RotateClientSecretResponse**](RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetClientScopes

> SetClientScopesResponse SetClientScopes(ctx, orgId, clientId).Execute()

Replace the scopes granted to an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.SetClientScopes(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.SetClientScopes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SetClientScopes`: SetClientScopesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.SetClientScopes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSetClientScopesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SetClientScopesResponse**](SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateClient

> UpdateClientResponse UpdateClient(ctx, orgId, clientId).Execute()

Replace an OAuth client

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
	clientId := "clientId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOAuthClientsAPI.UpdateClient(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOAuthClientsAPI.UpdateClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateClient`: UpdateClientResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOAuthClientsAPI.UpdateClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

