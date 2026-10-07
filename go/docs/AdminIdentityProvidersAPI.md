# \AdminIdentityProvidersAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminSocialProvidersAvailable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersAvailable) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types
[**AdminSocialProvidersCallbackUrls**](AdminIdentityProvidersAPI.md#AdminSocialProvidersCallbackUrls) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider
[**AdminSocialProvidersCreate**](AdminIdentityProvidersAPI.md#AdminSocialProvidersCreate) | **Post** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider
[**AdminSocialProvidersDelete**](AdminIdentityProvidersAPI.md#AdminSocialProvidersDelete) | **Delete** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
[**AdminSocialProvidersDisable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersDisable) | **Post** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
[**AdminSocialProvidersEnable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersEnable) | **Post** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
[**AdminSocialProvidersGet**](AdminIdentityProvidersAPI.md#AdminSocialProvidersGet) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider
[**AdminSocialProvidersList**](AdminIdentityProvidersAPI.md#AdminSocialProvidersList) | **Get** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers
[**AdminSocialProvidersTypes**](AdminIdentityProvidersAPI.md#AdminSocialProvidersTypes) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types
[**PatchAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#PatchAdminSocialProvidersUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider
[**PutAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#PutAdminSocialProvidersUpdate) | **Put** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider



## AdminSocialProvidersAvailable

> AdminSocialProvidersAvailableResponse AdminSocialProvidersAvailable(ctx, orgId).Execute()

List the available social login provider types

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
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersAvailable(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersAvailable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersAvailable`: AdminSocialProvidersAvailableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersAvailable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersAvailableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersCallbackUrls

> AdminSocialProvidersCallbackUrlsResponse AdminSocialProvidersCallbackUrls(ctx, orgId).Execute()

Get the OAuth callback URL of every configured provider

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
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersCallbackUrls(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersCallbackUrls``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersCallbackUrls`: AdminSocialProvidersCallbackUrlsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersCallbackUrls`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersCallbackUrlsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSocialProvidersCallbackUrlsResponse**](AdminSocialProvidersCallbackUrlsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersCreate

> AdminSocialProvidersCreateResponse AdminSocialProvidersCreate(ctx, orgId).Execute()

Create a social login provider

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
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersCreate`: AdminSocialProvidersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersDelete

> MessageResponse AdminSocialProvidersDelete(ctx, orgId, providerId).Execute()

Delete a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersDelete(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersDeleteRequest struct via the builder pattern


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


## AdminSocialProvidersDisable

> AdminSocialProvidersCreateResponse AdminSocialProvidersDisable(ctx, orgId, providerId).Execute()

Disable a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersDisable(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersDisable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersDisable`: AdminSocialProvidersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersDisable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersDisableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersEnable

> AdminSocialProvidersCreateResponse AdminSocialProvidersEnable(ctx, orgId, providerId).Execute()

Enable a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersEnable(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersEnable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersEnable`: AdminSocialProvidersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersEnable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersEnableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersGet

> AdminSocialProvidersGetResponse AdminSocialProvidersGet(ctx, orgId, providerId).Execute()

Get a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersGet(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersGet`: AdminSocialProvidersGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSocialProvidersGetResponse**](AdminSocialProvidersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersList

> AdminSocialProvidersListResponse AdminSocialProvidersList(ctx, orgId).Execute()

List social login providers

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
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersList`: AdminSocialProvidersListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSocialProvidersListResponse**](AdminSocialProvidersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersTypes

> AdminSocialProvidersAvailableResponse AdminSocialProvidersTypes(ctx, orgId).Execute()

List the available social login provider types

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
	resp, r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersTypes(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersTypes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSocialProvidersTypes`: AdminSocialProvidersAvailableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.AdminSocialProvidersTypes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSocialProvidersTypesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSocialProvidersUpdate

> AdminSocialProvidersCreateResponse PatchAdminSocialProvidersUpdate(ctx, orgId, providerId).Execute()

Update a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.PatchAdminSocialProvidersUpdate(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.PatchAdminSocialProvidersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSocialProvidersUpdate`: AdminSocialProvidersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.PatchAdminSocialProvidersUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSocialProvidersUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSocialProvidersUpdate

> AdminSocialProvidersCreateResponse PutAdminSocialProvidersUpdate(ctx, orgId, providerId).Execute()

Create or replace a social login provider

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
	providerId := "providerId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminIdentityProvidersAPI.PutAdminSocialProvidersUpdate(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.PutAdminSocialProvidersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSocialProvidersUpdate`: AdminSocialProvidersCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminIdentityProvidersAPI.PutAdminSocialProvidersUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**providerId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSocialProvidersUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

