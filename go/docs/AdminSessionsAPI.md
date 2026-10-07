# \AdminSessionsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminClientTokensRevokeAll**](AdminSessionsAPI.md#AdminClientTokensRevokeAll) | **Delete** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client
[**AdminClientTokensRevokePost**](AdminSessionsAPI.md#AdminClientTokensRevokePost) | **Post** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)
[**AdminSessionsCount**](AdminSessionsAPI.md#AdminSessionsCount) | **Get** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count
[**AdminSessionsList**](AdminSessionsAPI.md#AdminSessionsList) | **Get** /orgs/{orgId}/api/v1/admin/sessions | List active sessions
[**AdminSessionsRevoke**](AdminSessionsAPI.md#AdminSessionsRevoke) | **Delete** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session
[**AdminSessionsRevokeAll**](AdminSessionsAPI.md#AdminSessionsRevokeAll) | **Post** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant
[**AdminSessionsStats**](AdminSessionsAPI.md#AdminSessionsStats) | **Get** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics
[**AdminTokensList**](AdminSessionsAPI.md#AdminTokensList) | **Get** /orgs/{orgId}/api/v1/admin/tokens | List access tokens
[**AdminTokensRevoke**](AdminSessionsAPI.md#AdminTokensRevoke) | **Delete** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
[**AdminUserSessionsList**](AdminSessionsAPI.md#AdminUserSessionsList) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions
[**AdminUserSessionsRevokeAll**](AdminSessionsAPI.md#AdminUserSessionsRevokeAll) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user
[**AdminUserSessionsRevokePost**](AdminSessionsAPI.md#AdminUserSessionsRevokePost) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)
[**AdminUserTokensRevokeAll**](AdminSessionsAPI.md#AdminUserTokensRevokeAll) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user
[**AdminUserTokensRevokePost**](AdminSessionsAPI.md#AdminUserTokensRevokePost) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)



## AdminClientTokensRevokeAll

> AdminClientTokensRevokeAllResponse AdminClientTokensRevokeAll(ctx, orgId, clientId).Execute()

Revoke all tokens of a client

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
	resp, r, err := apiClient.AdminSessionsAPI.AdminClientTokensRevokeAll(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminClientTokensRevokeAll``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminClientTokensRevokeAll`: AdminClientTokensRevokeAllResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminClientTokensRevokeAll`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminClientTokensRevokeAllRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminClientTokensRevokeAllResponse**](AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminClientTokensRevokePost

> AdminUserTokensRevokePostResponse AdminClientTokensRevokePost(ctx, orgId, clientId).Execute()

Revoke all tokens of a client (POST alias)

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
	resp, r, err := apiClient.AdminSessionsAPI.AdminClientTokensRevokePost(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminClientTokensRevokePost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminClientTokensRevokePost`: AdminUserTokensRevokePostResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminClientTokensRevokePost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminClientTokensRevokePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSessionsCount

> AdminSessionsCountResponse AdminSessionsCount(ctx, orgId).Execute()

Active session count

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
	resp, r, err := apiClient.AdminSessionsAPI.AdminSessionsCount(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminSessionsCount``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSessionsCount`: AdminSessionsCountResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminSessionsCount`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSessionsCountRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSessionsCountResponse**](AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSessionsList

> AdminSessionsListResponse AdminSessionsList(ctx, orgId).Execute()

List active sessions



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
	resp, r, err := apiClient.AdminSessionsAPI.AdminSessionsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminSessionsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSessionsList`: AdminSessionsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminSessionsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSessionsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSessionsListResponse**](AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSessionsRevoke

> AdminSessionsRevokeResponse AdminSessionsRevoke(ctx, orgId, sessionId).Execute()

Revoke a session

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
	sessionId := "sessionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminSessionsRevoke(context.Background(), orgId, sessionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminSessionsRevoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSessionsRevoke`: AdminSessionsRevokeResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminSessionsRevoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**sessionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSessionsRevokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminSessionsRevokeResponse**](AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSessionsRevokeAll

> AdminSessionsRevokeAllResponse AdminSessionsRevokeAll(ctx, orgId).AdminSessionsRevokeAllRequest(adminSessionsRevokeAllRequest).Execute()

Revoke every session in the tenant



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
	adminSessionsRevokeAllRequest := *openapiclient.NewAdminSessionsRevokeAllRequest(true) // AdminSessionsRevokeAllRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminSessionsRevokeAll(context.Background(), orgId).AdminSessionsRevokeAllRequest(adminSessionsRevokeAllRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminSessionsRevokeAll``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSessionsRevokeAll`: AdminSessionsRevokeAllResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminSessionsRevokeAll`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSessionsRevokeAllRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminSessionsRevokeAllRequest** | [**AdminSessionsRevokeAllRequest**](AdminSessionsRevokeAllRequest.md) |  | 

### Return type

[**AdminSessionsRevokeAllResponse**](AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSessionsStats

> AdminSessionsStatsResponse AdminSessionsStats(ctx, orgId).Execute()

Session statistics

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
	resp, r, err := apiClient.AdminSessionsAPI.AdminSessionsStats(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminSessionsStats``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSessionsStats`: AdminSessionsStatsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminSessionsStats`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSessionsStatsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSessionsStatsResponse**](AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminTokensList

> AdminTokensListResponse AdminTokensList(ctx, orgId).Execute()

List access tokens



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
	resp, r, err := apiClient.AdminSessionsAPI.AdminTokensList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminTokensList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminTokensList`: AdminTokensListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminTokensList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminTokensListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminTokensListResponse**](AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminTokensRevoke

> AdminTokensRevokeResponse AdminTokensRevoke(ctx, orgId, tokenId).Execute()

Revoke a token

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
	tokenId := "tokenId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminTokensRevoke(context.Background(), orgId, tokenId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminTokensRevoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminTokensRevoke`: AdminTokensRevokeResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminTokensRevoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**tokenId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminTokensRevokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminTokensRevokeResponse**](AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminUserSessionsList

> AdminUserSessionsListResponse AdminUserSessionsList(ctx, orgId, userId).Execute()

List a user's active sessions



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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminUserSessionsList(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminUserSessionsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminUserSessionsList`: AdminUserSessionsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminUserSessionsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminUserSessionsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserSessionsListResponse**](AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminUserSessionsRevokeAll

> AdminUserSessionsRevokeAllResponse AdminUserSessionsRevokeAll(ctx, orgId, userId).Execute()

Revoke all sessions of a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminUserSessionsRevokeAll(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminUserSessionsRevokeAll``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminUserSessionsRevokeAll`: AdminUserSessionsRevokeAllResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminUserSessionsRevokeAll`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminUserSessionsRevokeAllRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserSessionsRevokeAllResponse**](AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminUserSessionsRevokePost

> AdminUserSessionsRevokePostResponse AdminUserSessionsRevokePost(ctx, orgId, userId).Execute()

Revoke all sessions of a user (POST alias)

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminUserSessionsRevokePost(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminUserSessionsRevokePost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminUserSessionsRevokePost`: AdminUserSessionsRevokePostResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminUserSessionsRevokePost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminUserSessionsRevokePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserSessionsRevokePostResponse**](AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminUserTokensRevokeAll

> AdminUserTokensRevokeAllResponse AdminUserTokensRevokeAll(ctx, orgId, userId).Execute()

Revoke all tokens of a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminUserTokensRevokeAll(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminUserTokensRevokeAll``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminUserTokensRevokeAll`: AdminUserTokensRevokeAllResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminUserTokensRevokeAll`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminUserTokensRevokeAllRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserTokensRevokeAllResponse**](AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminUserTokensRevokePost

> AdminUserTokensRevokePostResponse AdminUserTokensRevokePost(ctx, orgId, userId).Execute()

Revoke all tokens of a user (POST alias)

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSessionsAPI.AdminUserTokensRevokePost(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSessionsAPI.AdminUserTokensRevokePost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminUserTokensRevokePost`: AdminUserTokensRevokePostResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSessionsAPI.AdminUserTokensRevokePost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminUserTokensRevokePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

