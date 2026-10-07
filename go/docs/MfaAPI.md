# \MfaAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateMfaChallenge**](MfaAPI.md#CreateMfaChallenge) | **Post** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge
[**DeleteAuthenticator**](MfaAPI.md#DeleteAuthenticator) | **Delete** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator
[**EnrollAuthenticator**](MfaAPI.md#EnrollAuthenticator) | **Post** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator
[**GenerateRecoveryCodes**](MfaAPI.md#GenerateRecoveryCodes) | **Post** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes
[**GetMfaChallenge**](MfaAPI.md#GetMfaChallenge) | **Get** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status
[**GetRecoveryCodeStatus**](MfaAPI.md#GetRecoveryCodeStatus) | **Get** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status
[**ListMyAuthenticators**](MfaAPI.md#ListMyAuthenticators) | **Get** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators
[**ListTrustedDevices**](MfaAPI.md#ListTrustedDevices) | **Get** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices
[**RevokeTrustedDevice**](MfaAPI.md#RevokeTrustedDevice) | **Delete** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device
[**UpdateAuthenticator**](MfaAPI.md#UpdateAuthenticator) | **Patch** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default
[**VerifyAuthenticator**](MfaAPI.md#VerifyAuthenticator) | **Post** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator
[**VerifyMfaChallenge**](MfaAPI.md#VerifyMfaChallenge) | **Post** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge



## CreateMfaChallenge

> MfaChallenge CreateMfaChallenge(ctx, orgId).CreateMfaChallengeRequest(createMfaChallengeRequest).Execute()

Start an MFA challenge



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
	createMfaChallengeRequest := *openapiclient.NewCreateMfaChallengeRequest() // CreateMfaChallengeRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.CreateMfaChallenge(context.Background(), orgId).CreateMfaChallengeRequest(createMfaChallengeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.CreateMfaChallenge``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateMfaChallenge`: MfaChallenge
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.CreateMfaChallenge`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateMfaChallengeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createMfaChallengeRequest** | [**CreateMfaChallengeRequest**](CreateMfaChallengeRequest.md) |  | 

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteAuthenticator

> DeleteAuthenticator(ctx, orgId, id).XMFAChallenge(xMFAChallenge).Execute()

Remove an authenticator



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
	id := "id_example" // string | 
	xMFAChallenge := "xMFAChallenge_example" // string | Approved step_up challenge id (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.MfaAPI.DeleteAuthenticator(context.Background(), orgId, id).XMFAChallenge(xMFAChallenge).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.DeleteAuthenticator``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteAuthenticatorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xMFAChallenge** | **string** | Approved step_up challenge id | 

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


## EnrollAuthenticator

> EnrollAuthenticator201Response EnrollAuthenticator(ctx, orgId, type_).EnrollAuthenticatorRequest(enrollAuthenticatorRequest).Execute()

Start enrolling an authenticator



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
	type_ := "type__example" // string | 
	enrollAuthenticatorRequest := *openapiclient.NewEnrollAuthenticatorRequest() // EnrollAuthenticatorRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.EnrollAuthenticator(context.Background(), orgId, type_).EnrollAuthenticatorRequest(enrollAuthenticatorRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.EnrollAuthenticator``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnrollAuthenticator`: EnrollAuthenticator201Response
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.EnrollAuthenticator`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEnrollAuthenticatorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **enrollAuthenticatorRequest** | [**EnrollAuthenticatorRequest**](EnrollAuthenticatorRequest.md) |  | 

### Return type

[**EnrollAuthenticator201Response**](EnrollAuthenticator201Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateRecoveryCodes

> GenerateRecoveryCodesResponse GenerateRecoveryCodes(ctx, orgId).Execute()

Generate recovery codes



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
	resp, r, err := apiClient.MfaAPI.GenerateRecoveryCodes(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.GenerateRecoveryCodes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateRecoveryCodes`: GenerateRecoveryCodesResponse
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.GenerateRecoveryCodes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateRecoveryCodesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GenerateRecoveryCodesResponse**](GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMfaChallenge

> MfaChallenge GetMfaChallenge(ctx, orgId, id).Execute()

Get challenge status



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
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.GetMfaChallenge(context.Background(), orgId, id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.GetMfaChallenge``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMfaChallenge`: MfaChallenge
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.GetMfaChallenge`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMfaChallengeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecoveryCodeStatus

> GetRecoveryCodeStatusResponse GetRecoveryCodeStatus(ctx, orgId).Execute()

Recovery-code status

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
	resp, r, err := apiClient.MfaAPI.GetRecoveryCodeStatus(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.GetRecoveryCodeStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetRecoveryCodeStatus`: GetRecoveryCodeStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.GetRecoveryCodeStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecoveryCodeStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetRecoveryCodeStatusResponse**](GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListMyAuthenticators

> ListMyAuthenticatorsResponse ListMyAuthenticators(ctx, orgId).Execute()

List my authenticators



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
	resp, r, err := apiClient.MfaAPI.ListMyAuthenticators(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.ListMyAuthenticators``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListMyAuthenticators`: ListMyAuthenticatorsResponse
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.ListMyAuthenticators`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListMyAuthenticatorsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListMyAuthenticatorsResponse**](ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListTrustedDevices

> ListTrustedDevicesResponse ListTrustedDevices(ctx, orgId).Execute()

List trusted devices

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
	resp, r, err := apiClient.MfaAPI.ListTrustedDevices(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.ListTrustedDevices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListTrustedDevices`: ListTrustedDevicesResponse
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.ListTrustedDevices`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListTrustedDevicesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListTrustedDevicesResponse**](ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RevokeTrustedDevice

> RevokeTrustedDevice(ctx, orgId, id).Execute()

Revoke a trusted device

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
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.MfaAPI.RevokeTrustedDevice(context.Background(), orgId, id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.RevokeTrustedDevice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRevokeTrustedDeviceRequest struct via the builder pattern


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


## UpdateAuthenticator

> MfaAuthenticator UpdateAuthenticator(ctx, orgId, id).UpdateAuthenticatorRequest(updateAuthenticatorRequest).Execute()

Rename an authenticator or make it the default

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
	id := "id_example" // string | 
	updateAuthenticatorRequest := *openapiclient.NewUpdateAuthenticatorRequest() // UpdateAuthenticatorRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.UpdateAuthenticator(context.Background(), orgId, id).UpdateAuthenticatorRequest(updateAuthenticatorRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.UpdateAuthenticator``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAuthenticator`: MfaAuthenticator
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.UpdateAuthenticator`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAuthenticatorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **updateAuthenticatorRequest** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md) |  | 

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyAuthenticator

> MfaAuthenticator VerifyAuthenticator(ctx, orgId, id).VerifyMfaChallengeRequest(verifyMfaChallengeRequest).Execute()

Verify a pending authenticator



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
	id := "id_example" // string | 
	verifyMfaChallengeRequest := *openapiclient.NewVerifyMfaChallengeRequest() // VerifyMfaChallengeRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.VerifyAuthenticator(context.Background(), orgId, id).VerifyMfaChallengeRequest(verifyMfaChallengeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.VerifyAuthenticator``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyAuthenticator`: MfaAuthenticator
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.VerifyAuthenticator`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyAuthenticatorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | 

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyMfaChallenge

> MfaChallenge VerifyMfaChallenge(ctx, orgId, id).VerifyMfaChallengeRequest(verifyMfaChallengeRequest).Execute()

Answer a challenge



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
	id := "id_example" // string | 
	verifyMfaChallengeRequest := *openapiclient.NewVerifyMfaChallengeRequest() // VerifyMfaChallengeRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MfaAPI.VerifyMfaChallenge(context.Background(), orgId, id).VerifyMfaChallengeRequest(verifyMfaChallengeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MfaAPI.VerifyMfaChallenge``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyMfaChallenge`: MfaChallenge
	fmt.Fprintf(os.Stdout, "Response from `MfaAPI.VerifyMfaChallenge`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyMfaChallengeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | 

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

