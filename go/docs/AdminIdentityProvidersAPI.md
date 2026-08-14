# \AdminIdentityProvidersAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminSocialProvidersAvailable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersAvailable) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/available | Get available social login provider types
[**AdminSocialProvidersCallbackUrls**](AdminIdentityProvidersAPI.md#AdminSocialProvidersCallbackUrls) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get callback URLs for all configured providers
[**AdminSocialProvidersCreate**](AdminIdentityProvidersAPI.md#AdminSocialProvidersCreate) | **Post** /orgs/{orgId}/api/v1/admin/social-providers | Create a new social login provider
[**AdminSocialProvidersDelete**](AdminIdentityProvidersAPI.md#AdminSocialProvidersDelete) | **Delete** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
[**AdminSocialProvidersDisable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersDisable) | **Post** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
[**AdminSocialProvidersEnable**](AdminIdentityProvidersAPI.md#AdminSocialProvidersEnable) | **Post** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
[**AdminSocialProvidersGet**](AdminIdentityProvidersAPI.md#AdminSocialProvidersGet) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a single social login provider (by ID or by provider name)
[**AdminSocialProvidersList**](AdminIdentityProvidersAPI.md#AdminSocialProvidersList) | **Get** /orgs/{orgId}/api/v1/admin/social-providers | List all configured social login providers
[**AdminSocialProvidersTypes**](AdminIdentityProvidersAPI.md#AdminSocialProvidersTypes) | **Get** /orgs/{orgId}/api/v1/admin/social-providers/types | Get available social login provider types
[**PatchAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#PatchAdminSocialProvidersUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Upsert (create or update) a social login provider via PUT; update via PATCH
[**PutAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#PutAdminSocialProvidersUpdate) | **Put** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Upsert (create or update) a social login provider via PUT; update via PATCH



## AdminSocialProvidersAvailable

> AdminSocialProvidersAvailable(ctx, orgId).Execute()

Get available social login provider types

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersAvailable(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersAvailable``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAdminSocialProvidersAvailableRequest struct via the builder pattern


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


## AdminSocialProvidersCallbackUrls

> AdminSocialProvidersCallbackUrls(ctx, orgId).Execute()

Get callback URLs for all configured providers

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersCallbackUrls(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersCallbackUrls``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAdminSocialProvidersCallbackUrlsRequest struct via the builder pattern


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


## AdminSocialProvidersCreate

> AdminSocialProvidersCreate(ctx, orgId).Execute()

Create a new social login provider

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersCreate``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAdminSocialProvidersCreateRequest struct via the builder pattern


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


## AdminSocialProvidersDelete

> AdminSocialProvidersDelete(ctx, orgId, providerId).Execute()

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersDelete(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersDisable

> AdminSocialProvidersDisable(ctx, orgId, providerId).Execute()

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersDisable(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersDisable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersEnable

> AdminSocialProvidersEnable(ctx, orgId, providerId).Execute()

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersEnable(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersEnable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersGet

> AdminSocialProvidersGet(ctx, orgId, providerId).Execute()

Get a single social login provider (by ID or by provider name)

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersGet(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSocialProvidersList

> AdminSocialProvidersList(ctx, orgId).Execute()

List all configured social login providers

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersList``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAdminSocialProvidersListRequest struct via the builder pattern


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


## AdminSocialProvidersTypes

> AdminSocialProvidersTypes(ctx, orgId).Execute()

Get available social login provider types

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
	r, err := apiClient.AdminIdentityProvidersAPI.AdminSocialProvidersTypes(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.AdminSocialProvidersTypes``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAdminSocialProvidersTypesRequest struct via the builder pattern


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


## PatchAdminSocialProvidersUpdate

> PatchAdminSocialProvidersUpdate(ctx, orgId, providerId).Execute()

Upsert (create or update) a social login provider via PUT; update via PATCH

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
	r, err := apiClient.AdminIdentityProvidersAPI.PatchAdminSocialProvidersUpdate(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.PatchAdminSocialProvidersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSocialProvidersUpdate

> PutAdminSocialProvidersUpdate(ctx, orgId, providerId).Execute()

Upsert (create or update) a social login provider via PUT; update via PATCH

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
	r, err := apiClient.AdminIdentityProvidersAPI.PutAdminSocialProvidersUpdate(context.Background(), orgId, providerId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminIdentityProvidersAPI.PutAdminSocialProvidersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
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

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

