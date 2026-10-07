# \AAuthAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthorizeAgent**](AAuthAPI.md#AuthorizeAgent) | **Get** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.
[**GetAgentJwks**](AAuthAPI.md#GetAgentJwks) | **Get** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint
[**GetAgentMetadata**](AAuthAPI.md#GetAgentMetadata) | **Get** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
[**GetAgentMetadataById**](AAuthAPI.md#GetAgentMetadataById) | **Get** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata
[**GetIssuerJwks**](AAuthAPI.md#GetIssuerJwks) | **Get** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.
[**GetIssuerMetadata**](AAuthAPI.md#GetIssuerMetadata) | **Get** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
[**GetResourceJwks**](AAuthAPI.md#GetResourceJwks) | **Get** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint
[**GetResourceMetadata**](AAuthAPI.md#GetResourceMetadata) | **Get** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)
[**GetResourceMetadataById**](AAuthAPI.md#GetResourceMetadataById) | **Get** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata
[**IssueAgentToken**](AAuthAPI.md#IssueAgentToken) | **Post** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint
[**IssueDelegateToken**](AAuthAPI.md#IssueDelegateToken) | **Post** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.
[**IssuePlatformToken**](AAuthAPI.md#IssuePlatformToken) | **Post** /orgs/{orgId}/api/v1/aauth/agent/platform-token | 
[**IssueResourceToken**](AAuthAPI.md#IssueResourceToken) | **Post** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)
[**RevokeAgentToken**](AAuthAPI.md#RevokeAgentToken) | **Post** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.
[**VerifyAuthToken**](AAuthAPI.md#VerifyAuthToken) | **Post** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.
[**VerifyResourceToken**](AAuthAPI.md#VerifyResourceToken) | **Post** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).



## AuthorizeAgent

> AuthorizeAgent(ctx, orgId).Execute()

Agent Auth Endpoint - redirects to user consent page.



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
	r, err := apiClient.AAuthAPI.AuthorizeAgent(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.AuthorizeAgent``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAuthorizeAgentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAgentJwks

> JwksResponse GetAgentJwks(ctx, orgId, agentId).Execute()

Agent JWKS endpoint

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
	resp, r, err := apiClient.AAuthAPI.GetAgentJwks(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetAgentJwks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAgentJwks`: JwksResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetAgentJwks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAgentJwksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAgentMetadata

> []map[string]interface{} GetAgentMetadata(ctx, orgId).Execute()

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

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
	resp, r, err := apiClient.AAuthAPI.GetAgentMetadata(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetAgentMetadata``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAgentMetadata`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetAgentMetadata`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAgentMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**[]map[string]interface{}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAgentMetadataById

> map[string]interface{} GetAgentMetadataById(ctx, orgId, agentId).Execute()

Individual Agent Metadata

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
	resp, r, err := apiClient.AAuthAPI.GetAgentMetadataById(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetAgentMetadataById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAgentMetadataById`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetAgentMetadataById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAgentMetadataByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

**map[string]interface{}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIssuerJwks

> JwksResponse GetIssuerJwks(ctx, orgId).Execute()

Auth Server JWKS endpoint for AAuth.

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
	resp, r, err := apiClient.AAuthAPI.GetIssuerJwks(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetIssuerJwks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetIssuerJwks`: JwksResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetIssuerJwks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetIssuerJwksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIssuerMetadata

> GetIssuerMetadataResponse GetIssuerMetadata(ctx, orgId).Execute()

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

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
	resp, r, err := apiClient.AAuthAPI.GetIssuerMetadata(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetIssuerMetadata``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetIssuerMetadata`: GetIssuerMetadataResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetIssuerMetadata`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetIssuerMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetResourceJwks

> JwksResponse GetResourceJwks(ctx, orgId, resourceId).Execute()

Resource JWKS endpoint

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
	resourceId := "resourceId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.GetResourceJwks(context.Background(), orgId, resourceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetResourceJwks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetResourceJwks`: JwksResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetResourceJwks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**resourceId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetResourceJwksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetResourceMetadata

> []map[string]interface{} GetResourceMetadata(ctx, orgId).Execute()

Resource Metadata (Section 8.3)

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
	resp, r, err := apiClient.AAuthAPI.GetResourceMetadata(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetResourceMetadata``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetResourceMetadata`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetResourceMetadata`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetResourceMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**[]map[string]interface{}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetResourceMetadataById

> map[string]interface{} GetResourceMetadataById(ctx, orgId, resourceId).Execute()

Individual Resource Metadata

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
	resourceId := "resourceId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.GetResourceMetadataById(context.Background(), orgId, resourceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.GetResourceMetadataById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetResourceMetadataById`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.GetResourceMetadataById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**resourceId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetResourceMetadataByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

**map[string]interface{}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IssueAgentToken

> IssueAgentTokenResponse IssueAgentToken(ctx, orgId).IssueAgentTokenRequest(issueAgentTokenRequest).Execute()

Agent Token Endpoint



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
	issueAgentTokenRequest := *openapiclient.NewIssueAgentTokenRequest() // IssueAgentTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.IssueAgentToken(context.Background(), orgId).IssueAgentTokenRequest(issueAgentTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.IssueAgentToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `IssueAgentToken`: IssueAgentTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.IssueAgentToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIssueAgentTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **issueAgentTokenRequest** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md) |  | 

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IssueDelegateToken

> IssueDelegateTokenResponse IssueDelegateToken(ctx, orgId).IssueDelegateTokenRequest(issueDelegateTokenRequest).Execute()

Issue an agent token to a delegate.



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
	issueDelegateTokenRequest := *openapiclient.NewIssueDelegateTokenRequest() // IssueDelegateTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.IssueDelegateToken(context.Background(), orgId).IssueDelegateTokenRequest(issueDelegateTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.IssueDelegateToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `IssueDelegateToken`: IssueDelegateTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.IssueDelegateToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIssueDelegateTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **issueDelegateTokenRequest** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md) |  | 

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IssuePlatformToken

> IssuePlatformTokenResponse IssuePlatformToken(ctx, orgId).IssuePlatformTokenRequest(issuePlatformTokenRequest).Execute()



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
	issuePlatformTokenRequest := *openapiclient.NewIssuePlatformTokenRequest() // IssuePlatformTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.IssuePlatformToken(context.Background(), orgId).IssuePlatformTokenRequest(issuePlatformTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.IssuePlatformToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `IssuePlatformToken`: IssuePlatformTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.IssuePlatformToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIssuePlatformTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **issuePlatformTokenRequest** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md) |  | 

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IssueResourceToken

> IssueResourceTokenResponse IssueResourceToken(ctx, orgId).IssueResourceTokenRequest(issueResourceTokenRequest).Execute()

Resource Token Endpoint (Section 6)



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
	issueResourceTokenRequest := *openapiclient.NewIssueResourceTokenRequest() // IssueResourceTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.IssueResourceToken(context.Background(), orgId).IssueResourceTokenRequest(issueResourceTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.IssueResourceToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `IssueResourceToken`: IssueResourceTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.IssueResourceToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIssueResourceTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **issueResourceTokenRequest** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md) |  | 

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RevokeAgentToken

> RevokeAgentTokenResponse RevokeAgentToken(ctx, orgId).RevokeAgentTokenRequest(revokeAgentTokenRequest).Execute()

Revoke an auth token or refresh token.

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
	revokeAgentTokenRequest := *openapiclient.NewRevokeAgentTokenRequest() // RevokeAgentTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.RevokeAgentToken(context.Background(), orgId).RevokeAgentTokenRequest(revokeAgentTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.RevokeAgentToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RevokeAgentToken`: RevokeAgentTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.RevokeAgentToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRevokeAgentTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **revokeAgentTokenRequest** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md) |  | 

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyAuthToken

> VerifyAuthTokenResponse VerifyAuthToken(ctx, orgId).VerifyAuthTokenRequest(verifyAuthTokenRequest).Execute()

Auth Token Verification endpoint.



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
	verifyAuthTokenRequest := *openapiclient.NewVerifyAuthTokenRequest() // VerifyAuthTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.VerifyAuthToken(context.Background(), orgId).VerifyAuthTokenRequest(verifyAuthTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.VerifyAuthToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyAuthToken`: VerifyAuthTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.VerifyAuthToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyAuthTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **verifyAuthTokenRequest** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md) |  | 

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyResourceToken

> VerifyResourceTokenResponse VerifyResourceToken(ctx, orgId).VerifyResourceTokenRequest(verifyResourceTokenRequest).Execute()

Resource Token Verification (for resources to validate their own tokens).



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
	verifyResourceTokenRequest := *openapiclient.NewVerifyResourceTokenRequest() // VerifyResourceTokenRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AAuthAPI.VerifyResourceToken(context.Background(), orgId).VerifyResourceTokenRequest(verifyResourceTokenRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AAuthAPI.VerifyResourceToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyResourceToken`: VerifyResourceTokenResponse
	fmt.Fprintf(os.Stdout, "Response from `AAuthAPI.VerifyResourceToken`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyResourceTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **verifyResourceTokenRequest** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md) |  | 

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

