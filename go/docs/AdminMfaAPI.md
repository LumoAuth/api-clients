# \AdminMfaAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteUserAuthenticator**](AdminMfaAPI.md#DeleteUserAuthenticator) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators
[**GetMfaCoverageReport**](AdminMfaAPI.md#GetMfaCoverageReport) | **Get** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
[**GetMfaPolicy**](AdminMfaAPI.md#GetMfaPolicy) | **Get** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
[**IssueTemporaryAccessCode**](AdminMfaAPI.md#IssueTemporaryAccessCode) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
[**ListUserAuthenticators**](AdminMfaAPI.md#ListUserAuthenticators) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators
[**UpdateMfaPolicy**](AdminMfaAPI.md#UpdateMfaPolicy) | **Put** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy



## DeleteUserAuthenticator

> DeleteUserAuthenticatorResponse DeleteUserAuthenticator(ctx, orgId, userId, authenticatorId).Execute()

Remove one of a user's authenticators



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
	authenticatorId := "authenticatorId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMfaAPI.DeleteUserAuthenticator(context.Background(), orgId, userId, authenticatorId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.DeleteUserAuthenticator``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteUserAuthenticator`: DeleteUserAuthenticatorResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.DeleteUserAuthenticator`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 
**authenticatorId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteUserAuthenticatorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMfaCoverageReport

> GetMfaCoverageReportResponse GetMfaCoverageReport(ctx, orgId).Execute()

MFA enrollment coverage



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
	resp, r, err := apiClient.AdminMfaAPI.GetMfaCoverageReport(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.GetMfaCoverageReport``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMfaCoverageReport`: GetMfaCoverageReportResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.GetMfaCoverageReport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMfaCoverageReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMfaPolicy

> GetMfaPolicyResponse GetMfaPolicy(ctx, orgId).Execute()

Get the MFA policy

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
	resp, r, err := apiClient.AdminMfaAPI.GetMfaPolicy(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.GetMfaPolicy``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMfaPolicy`: GetMfaPolicyResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.GetMfaPolicy`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMfaPolicyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IssueTemporaryAccessCode

> IssueTemporaryAccessCodeResponse IssueTemporaryAccessCode(ctx, orgId, userId).IssueTemporaryAccessCodeRequest(issueTemporaryAccessCodeRequest).Execute()

Issue a temporary access code



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
	issueTemporaryAccessCodeRequest := *openapiclient.NewIssueTemporaryAccessCodeRequest("User lost phone; identity verified by video call") // IssueTemporaryAccessCodeRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMfaAPI.IssueTemporaryAccessCode(context.Background(), orgId, userId).IssueTemporaryAccessCodeRequest(issueTemporaryAccessCodeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.IssueTemporaryAccessCode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `IssueTemporaryAccessCode`: IssueTemporaryAccessCodeResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.IssueTemporaryAccessCode`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIssueTemporaryAccessCodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **issueTemporaryAccessCodeRequest** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md) |  | 

### Return type

[**IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListUserAuthenticators

> ListUserAuthenticatorsResponse ListUserAuthenticators(ctx, orgId, userId).Execute()

List a user's authenticators



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
	resp, r, err := apiClient.AdminMfaAPI.ListUserAuthenticators(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.ListUserAuthenticators``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListUserAuthenticators`: ListUserAuthenticatorsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.ListUserAuthenticators`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListUserAuthenticatorsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateMfaPolicy

> UpdateMfaPolicyResponse UpdateMfaPolicy(ctx, orgId).MfaPolicy(mfaPolicy).Execute()

Update the MFA policy



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
	mfaPolicy := *openapiclient.NewMfaPolicy() // MfaPolicy | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminMfaAPI.UpdateMfaPolicy(context.Background(), orgId).MfaPolicy(mfaPolicy).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminMfaAPI.UpdateMfaPolicy``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateMfaPolicy`: UpdateMfaPolicyResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminMfaAPI.UpdateMfaPolicy`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateMfaPolicyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **mfaPolicy** | [**MfaPolicy**](MfaPolicy.md) |  | 

### Return type

[**UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

