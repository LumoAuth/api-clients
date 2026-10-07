# \AdminWebhooksAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminWebhooksCreate**](AdminWebhooksAPI.md#AdminWebhooksCreate) | **Post** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook
[**AdminWebhooksDelete**](AdminWebhooksAPI.md#AdminWebhooksDelete) | **Delete** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
[**AdminWebhooksDeliveriesList**](AdminWebhooksAPI.md#AdminWebhooksDeliveriesList) | **Get** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries
[**AdminWebhooksDeliveryReplay**](AdminWebhooksAPI.md#AdminWebhooksDeliveryReplay) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery
[**AdminWebhooksDeliveryShow**](AdminWebhooksAPI.md#AdminWebhooksDeliveryShow) | **Get** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery
[**AdminWebhooksEvents**](AdminWebhooksAPI.md#AdminWebhooksEvents) | **Get** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types
[**AdminWebhooksGet**](AdminWebhooksAPI.md#AdminWebhooksGet) | **Get** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook
[**AdminWebhooksList**](AdminWebhooksAPI.md#AdminWebhooksList) | **Get** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks
[**AdminWebhooksRotateSecret**](AdminWebhooksAPI.md#AdminWebhooksRotateSecret) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret
[**AdminWebhooksTest**](AdminWebhooksAPI.md#AdminWebhooksTest) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery
[**AdminWebhooksTunnelStart**](AdminWebhooksAPI.md#AdminWebhooksTunnelStart) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel
[**AdminWebhooksTunnelStop**](AdminWebhooksAPI.md#AdminWebhooksTunnelStop) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel
[**AdminWebhooksTunnelStream**](AdminWebhooksAPI.md#AdminWebhooksTunnelStream) | **Get** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)
[**AdminWebhooksWebhooksDisable**](AdminWebhooksAPI.md#AdminWebhooksWebhooksDisable) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook
[**AdminWebhooksWebhooksEnable**](AdminWebhooksAPI.md#AdminWebhooksWebhooksEnable) | **Post** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook
[**PatchAdminWebhooksUpdate**](AdminWebhooksAPI.md#PatchAdminWebhooksUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook
[**PutAdminWebhooksUpdate**](AdminWebhooksAPI.md#PutAdminWebhooksUpdate) | **Put** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook



## AdminWebhooksCreate

> AdminWebhooksCreateResponse AdminWebhooksCreate(ctx, orgId).Execute()

Create a webhook



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
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksCreate`: AdminWebhooksCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminWebhooksCreateResponse**](AdminWebhooksCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksDelete

> MessageResponse AdminWebhooksDelete(ctx, orgId, webhookId).Execute()

Delete a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksDelete(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksDeleteRequest struct via the builder pattern


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


## AdminWebhooksDeliveriesList

> AdminWebhooksDeliveriesListResponse AdminWebhooksDeliveriesList(ctx, orgId, webhookId).Execute()

List recent deliveries



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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksDeliveriesList(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksDeliveriesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksDeliveriesList`: AdminWebhooksDeliveriesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksDeliveriesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksDeliveriesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksDeliveriesListResponse**](AdminWebhooksDeliveriesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksDeliveryReplay

> AdminWebhooksDeliveryReplayResponse AdminWebhooksDeliveryReplay(ctx, orgId, webhookId, deliveryId).Execute()

Replay a delivery



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
	webhookId := "webhookId_example" // string | 
	deliveryId := "deliveryId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksDeliveryReplay(context.Background(), orgId, webhookId, deliveryId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksDeliveryReplay``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksDeliveryReplay`: AdminWebhooksDeliveryReplayResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksDeliveryReplay`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 
**deliveryId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksDeliveryReplayRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminWebhooksDeliveryReplayResponse**](AdminWebhooksDeliveryReplayResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksDeliveryShow

> AdminWebhooksDeliveryShowResponse AdminWebhooksDeliveryShow(ctx, orgId, webhookId, deliveryId).Execute()

Get a delivery



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
	webhookId := "webhookId_example" // string | 
	deliveryId := "deliveryId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksDeliveryShow(context.Background(), orgId, webhookId, deliveryId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksDeliveryShow``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksDeliveryShow`: AdminWebhooksDeliveryShowResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksDeliveryShow`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 
**deliveryId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksDeliveryShowRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminWebhooksDeliveryShowResponse**](AdminWebhooksDeliveryShowResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksEvents

> AdminWebhooksEventsResponse AdminWebhooksEvents(ctx, orgId).Execute()

List available webhook event types

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
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksEvents(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksEvents`: AdminWebhooksEventsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksEvents`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksEventsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminWebhooksEventsResponse**](AdminWebhooksEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksGet

> AdminWebhooksGetResponse AdminWebhooksGet(ctx, orgId, webhookId).Execute()

Get a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksGet(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksGet`: AdminWebhooksGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksGetResponse**](AdminWebhooksGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksList

> AdminWebhooksListResponse AdminWebhooksList(ctx, orgId).Execute()

List webhooks



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
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksList`: AdminWebhooksListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminWebhooksListResponse**](AdminWebhooksListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksRotateSecret

> AdminWebhooksRotateSecretResponse AdminWebhooksRotateSecret(ctx, orgId, webhookId).Execute()

Rotate the signing secret



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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksRotateSecret(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksRotateSecret``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksRotateSecret`: AdminWebhooksRotateSecretResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksRotateSecret`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksRotateSecretRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksRotateSecretResponse**](AdminWebhooksRotateSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksTest

> AdminWebhooksTestResponse AdminWebhooksTest(ctx, orgId, webhookId).Execute()

Send a test delivery



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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksTest(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksTest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksTest`: AdminWebhooksTestResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksTest`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksTestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksTestResponse**](AdminWebhooksTestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksTunnelStart

> AdminWebhooksTunnelStartResponse AdminWebhooksTunnelStart(ctx, orgId).Execute()

Start a webhook tunnel



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
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksTunnelStart(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksTunnelStart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksTunnelStart`: AdminWebhooksTunnelStartResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksTunnelStart`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksTunnelStartRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminWebhooksTunnelStartResponse**](AdminWebhooksTunnelStartResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksTunnelStop

> MessageResponse AdminWebhooksTunnelStop(ctx, orgId, webhookId).Execute()

Stop a webhook tunnel



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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksTunnelStop(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksTunnelStop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksTunnelStop`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksTunnelStop`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksTunnelStopRequest struct via the builder pattern


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


## AdminWebhooksTunnelStream

> string AdminWebhooksTunnelStream(ctx, orgId, webhookId).Execute()

Stream tunnel deliveries (SSE)



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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksTunnelStream(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksTunnelStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksTunnelStream`: string
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksTunnelStream`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksTunnelStreamRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

**string**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksWebhooksDisable

> AdminWebhooksWebhooksDisableResponse AdminWebhooksWebhooksDisable(ctx, orgId, webhookId).Execute()

Disable a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksWebhooksDisable(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksWebhooksDisable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksWebhooksDisable`: AdminWebhooksWebhooksDisableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksWebhooksDisable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksWebhooksDisableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksWebhooksDisableResponse**](AdminWebhooksWebhooksDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminWebhooksWebhooksEnable

> AdminWebhooksWebhooksEnableResponse AdminWebhooksWebhooksEnable(ctx, orgId, webhookId).Execute()

Enable a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.AdminWebhooksWebhooksEnable(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.AdminWebhooksWebhooksEnable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminWebhooksWebhooksEnable`: AdminWebhooksWebhooksEnableResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.AdminWebhooksWebhooksEnable`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminWebhooksWebhooksEnableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminWebhooksWebhooksEnableResponse**](AdminWebhooksWebhooksEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminWebhooksUpdate

> PutAdminWebhooksUpdateResponse PatchAdminWebhooksUpdate(ctx, orgId, webhookId).Execute()

Partially update a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.PatchAdminWebhooksUpdate(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.PatchAdminWebhooksUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminWebhooksUpdate`: PutAdminWebhooksUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.PatchAdminWebhooksUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminWebhooksUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminWebhooksUpdate

> PutAdminWebhooksUpdateResponse PutAdminWebhooksUpdate(ctx, orgId, webhookId).Execute()

Update a webhook

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
	webhookId := "webhookId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminWebhooksAPI.PutAdminWebhooksUpdate(context.Background(), orgId, webhookId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminWebhooksAPI.PutAdminWebhooksUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminWebhooksUpdate`: PutAdminWebhooksUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminWebhooksAPI.PutAdminWebhooksUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**webhookId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminWebhooksUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

