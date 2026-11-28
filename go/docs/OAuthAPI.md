# \OAuthAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Authorize**](OAuthAPI.md#Authorize) | **Get** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**BackchannelAuthorize**](OAuthAPI.md#BackchannelAuthorize) | **Post** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**CheckEmailFirst**](OAuthAPI.md#CheckEmailFirst) | **Post** /orgs/{orgId}/api/v1/oauth/check-email | Sign-in methods for an email-first form
[**DeviceAuthorization**](OAuthAPI.md#DeviceAuthorization) | **Post** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**GetClientConfiguration**](OAuthAPI.md#GetClientConfiguration) | **Get** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**GetDeviceVerification**](OAuthAPI.md#GetDeviceVerification) | **Get** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**GetOrgSelection**](OAuthAPI.md#GetOrgSelection) | **Get** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**Introspect**](OAuthAPI.md#Introspect) | **Post** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**Par**](OAuthAPI.md#Par) | **Post** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**RegisterClient**](OAuthAPI.md#RegisterClient) | **Post** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**RequestMagicLink**](OAuthAPI.md#RequestMagicLink) | **Post** /orgs/{orgId}/api/v1/oauth/magic-link | Request a sign-in link by email
[**Revoke**](OAuthAPI.md#Revoke) | **Post** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**SocialCallback**](OAuthAPI.md#SocialCallback) | **Get** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**SocialCallbackPost**](OAuthAPI.md#SocialCallbackPost) | **Post** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**SocialLogin**](OAuthAPI.md#SocialLogin) | **Get** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**SubmitAuthorization**](OAuthAPI.md#SubmitAuthorization) | **Post** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**SubmitDeviceVerification**](OAuthAPI.md#SubmitDeviceVerification) | **Post** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
[**SubmitLoginJson**](OAuthAPI.md#SubmitLoginJson) | **Post** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
[**SubmitOrgSelection**](OAuthAPI.md#SubmitOrgSelection) | **Post** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
[**Token**](OAuthAPI.md#Token) | **Post** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint



## Authorize

> string Authorize(ctx, orgId).Execute()

OAuth 2.1 / OIDC authorization endpoint



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
	resp, r, err := apiClient.OAuthAPI.Authorize(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.Authorize``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Authorize`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.Authorize`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAuthorizeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BackchannelAuthorize

> BackchannelAuthorizeResponse BackchannelAuthorize(ctx, orgId).Scope(scope).LoginHint(loginHint).LoginHintToken(loginHintToken).IdTokenHint(idTokenHint).BindingMessage(bindingMessage).AcrValues(acrValues).RequestedExpiry(requestedExpiry).ClientNotificationToken(clientNotificationToken).AuthorizationDetails(authorizationDetails).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()

CIBA backchannel authentication request



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
	scope := "scope_example" // string | 
	loginHint := "loginHint_example" // string |  (optional)
	loginHintToken := "loginHintToken_example" // string |  (optional)
	idTokenHint := "idTokenHint_example" // string |  (optional)
	bindingMessage := "bindingMessage_example" // string |  (optional)
	acrValues := "acrValues_example" // string |  (optional)
	requestedExpiry := int32(56) // int32 |  (optional)
	clientNotificationToken := "clientNotificationToken_example" // string |  (optional)
	authorizationDetails := "authorizationDetails_example" // string |  (optional)
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.BackchannelAuthorize(context.Background(), orgId).Scope(scope).LoginHint(loginHint).LoginHintToken(loginHintToken).IdTokenHint(idTokenHint).BindingMessage(bindingMessage).AcrValues(acrValues).RequestedExpiry(requestedExpiry).ClientNotificationToken(clientNotificationToken).AuthorizationDetails(authorizationDetails).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.BackchannelAuthorize``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BackchannelAuthorize`: BackchannelAuthorizeResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.BackchannelAuthorize`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiBackchannelAuthorizeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **scope** | **string** |  | 
 **loginHint** | **string** |  | 
 **loginHintToken** | **string** |  | 
 **idTokenHint** | **string** |  | 
 **bindingMessage** | **string** |  | 
 **acrValues** | **string** |  | 
 **requestedExpiry** | **int32** |  | 
 **clientNotificationToken** | **string** |  | 
 **authorizationDetails** | **string** |  | 
 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 

### Return type

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckEmailFirst

> CheckEmailFirstResponse CheckEmailFirst(ctx, orgId).CheckEmailFirstRequest(checkEmailFirstRequest).Execute()

Sign-in methods for an email-first form



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
	checkEmailFirstRequest := *openapiclient.NewCheckEmailFirstRequest("Email_example", "ClientId_example") // CheckEmailFirstRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.CheckEmailFirst(context.Background(), orgId).CheckEmailFirstRequest(checkEmailFirstRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.CheckEmailFirst``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckEmailFirst`: CheckEmailFirstResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.CheckEmailFirst`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckEmailFirstRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **checkEmailFirstRequest** | [**CheckEmailFirstRequest**](CheckEmailFirstRequest.md) |  | 

### Return type

[**CheckEmailFirstResponse**](CheckEmailFirstResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceAuthorization

> DeviceAuthorizationResponse DeviceAuthorization(ctx, orgId).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Scope(scope).Resource(resource).AuthorizationDetails(authorizationDetails).Execute()

Device authorization request (RFC 8628)



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
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)
	scope := "scope_example" // string | Space-separated scopes. (optional)
	resource := "resource_example" // string | RFC 8707 resource indicator. (optional)
	authorizationDetails := "authorizationDetails_example" // string | RFC 9396, a JSON array as text. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.DeviceAuthorization(context.Background(), orgId).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Scope(scope).Resource(resource).AuthorizationDetails(authorizationDetails).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.DeviceAuthorization``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeviceAuthorization`: DeviceAuthorizationResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.DeviceAuthorization`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeviceAuthorizationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 
 **scope** | **string** | Space-separated scopes. | 
 **resource** | **string** | RFC 8707 resource indicator. | 
 **authorizationDetails** | **string** | RFC 9396, a JSON array as text. | 

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetClientConfiguration

> RegisteredClientMetadata GetClientConfiguration(ctx, orgId, clientId).Execute()

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)



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
	resp, r, err := apiClient.OAuthAPI.GetClientConfiguration(context.Background(), orgId, clientId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.GetClientConfiguration``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetClientConfiguration`: RegisteredClientMetadata
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.GetClientConfiguration`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**clientId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetClientConfigurationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetDeviceVerification

> string GetDeviceVerification(ctx, orgId).Execute()

Device verification page (RFC 8628 §3.3)



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
	resp, r, err := apiClient.OAuthAPI.GetDeviceVerification(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.GetDeviceVerification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetDeviceVerification`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.GetDeviceVerification`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetDeviceVerificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrgSelection

> string GetOrgSelection(ctx, orgId).Execute()

Organization selector page



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
	resp, r, err := apiClient.OAuthAPI.GetOrgSelection(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.GetOrgSelection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetOrgSelection`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.GetOrgSelection`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrgSelectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Introspect

> IntrospectResponse Introspect(ctx, orgId).Token(token).TokenTypeHint(tokenTypeHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()

Token introspection (RFC 7662)



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
	token := "token_example" // string | 
	tokenTypeHint := "tokenTypeHint_example" // string |  (optional)
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.Introspect(context.Background(), orgId).Token(token).TokenTypeHint(tokenTypeHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.Introspect``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Introspect`: IntrospectResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.Introspect`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiIntrospectRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **token** | **string** |  | 
 **tokenTypeHint** | **string** |  | 
 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Par

> ParResponse Par(ctx, orgId).ResponseType(responseType).RedirectUri(redirectUri).Scope(scope).State(state).Nonce(nonce).CodeChallenge(codeChallenge).CodeChallengeMethod(codeChallengeMethod).Request(request).Resource(resource).AuthorizationDetails(authorizationDetails).Prompt(prompt).LoginHint(loginHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()

Pushed authorization request (RFC 9126)



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
	responseType := "responseType_example" // string |  (optional)
	redirectUri := "redirectUri_example" // string |  (optional)
	scope := "scope_example" // string |  (optional)
	state := "state_example" // string |  (optional)
	nonce := "nonce_example" // string |  (optional)
	codeChallenge := "codeChallenge_example" // string |  (optional)
	codeChallengeMethod := "codeChallengeMethod_example" // string |  (optional)
	request := "request_example" // string | A signed request object (JAR, RFC 9101). (optional)
	resource := "resource_example" // string |  (optional)
	authorizationDetails := "authorizationDetails_example" // string |  (optional)
	prompt := "prompt_example" // string |  (optional)
	loginHint := "loginHint_example" // string |  (optional)
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.Par(context.Background(), orgId).ResponseType(responseType).RedirectUri(redirectUri).Scope(scope).State(state).Nonce(nonce).CodeChallenge(codeChallenge).CodeChallengeMethod(codeChallengeMethod).Request(request).Resource(resource).AuthorizationDetails(authorizationDetails).Prompt(prompt).LoginHint(loginHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.Par``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Par`: ParResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.Par`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiParRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **responseType** | **string** |  | 
 **redirectUri** | **string** |  | 
 **scope** | **string** |  | 
 **state** | **string** |  | 
 **nonce** | **string** |  | 
 **codeChallenge** | **string** |  | 
 **codeChallengeMethod** | **string** |  | 
 **request** | **string** | A signed request object (JAR, RFC 9101). | 
 **resource** | **string** |  | 
 **authorizationDetails** | **string** |  | 
 **prompt** | **string** |  | 
 **loginHint** | **string** |  | 
 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 

### Return type

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RegisterClient

> RegisterClientResponse RegisterClient(ctx, orgId).RegisterClientRequest(registerClientRequest).Execute()

Dynamic client registration (RFC 7591 / OIDC DCR)



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
	registerClientRequest := *openapiclient.NewRegisterClientRequest() // RegisterClientRequest | RFC 7591 client metadata.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.RegisterClient(context.Background(), orgId).RegisterClientRequest(registerClientRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.RegisterClient``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RegisterClient`: RegisterClientResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.RegisterClient`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRegisterClientRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **registerClientRequest** | [**RegisterClientRequest**](RegisterClientRequest.md) | RFC 7591 client metadata. | 

### Return type

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RequestMagicLink

> RequestMagicLinkResponse RequestMagicLink(ctx, orgId).RequestMagicLinkRequest(requestMagicLinkRequest).Execute()

Request a sign-in link by email



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
	requestMagicLinkRequest := *openapiclient.NewRequestMagicLinkRequest("Email_example", "ClientId_example") // RequestMagicLinkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.RequestMagicLink(context.Background(), orgId).RequestMagicLinkRequest(requestMagicLinkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.RequestMagicLink``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RequestMagicLink`: RequestMagicLinkResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.RequestMagicLink`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRequestMagicLinkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestMagicLinkRequest** | [**RequestMagicLinkRequest**](RequestMagicLinkRequest.md) |  | 

### Return type

[**RequestMagicLinkResponse**](RequestMagicLinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Revoke

> map[string]interface{} Revoke(ctx, orgId).Token(token).TokenTypeHint(tokenTypeHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()

Token revocation (RFC 7009)



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
	token := "token_example" // string | 
	tokenTypeHint := "tokenTypeHint_example" // string |  (optional)
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.Revoke(context.Background(), orgId).Token(token).TokenTypeHint(tokenTypeHint).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.Revoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Revoke`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.Revoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRevokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **token** | **string** |  | 
 **tokenTypeHint** | **string** |  | 
 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 

### Return type

**map[string]interface{}**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SocialCallback

> SocialCallback(ctx, orgId, provider).Execute()

Social / enterprise identity-provider callback



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
	provider := "provider_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OAuthAPI.SocialCallback(context.Background(), orgId, provider).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SocialCallback``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**provider** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSocialCallbackRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SocialCallbackPost

> SocialCallbackPost(ctx, orgId, provider).Execute()

Social / enterprise identity-provider callback (form_post)



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
	provider := "provider_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OAuthAPI.SocialCallbackPost(context.Background(), orgId, provider).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SocialCallbackPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**provider** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSocialCallbackPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SocialLogin

> SocialLogin(ctx, orgId, provider).Execute()

Start social / enterprise identity-provider login



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
	provider := "provider_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OAuthAPI.SocialLogin(context.Background(), orgId, provider).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SocialLogin``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**provider** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSocialLoginRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitAuthorization

> string SubmitAuthorization(ctx, orgId).Execute()

OAuth 2.1 / OIDC authorization endpoint (form submission)



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
	resp, r, err := apiClient.OAuthAPI.SubmitAuthorization(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SubmitAuthorization``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubmitAuthorization`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.SubmitAuthorization`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSubmitAuthorizationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitDeviceVerification

> string SubmitDeviceVerification(ctx, orgId).Execute()

Submit device verification



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
	resp, r, err := apiClient.OAuthAPI.SubmitDeviceVerification(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SubmitDeviceVerification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubmitDeviceVerification`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.SubmitDeviceVerification`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSubmitDeviceVerificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitLoginJson

> SubmitLoginJsonResponse SubmitLoginJson(ctx, orgId).SubmitLoginJsonRequest(submitLoginJsonRequest).Execute()

Programmatic (JSON) login for the authorization flow



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
	submitLoginJsonRequest := *openapiclient.NewSubmitLoginJsonRequest("Email_example", "Password_example") // SubmitLoginJsonRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.SubmitLoginJson(context.Background(), orgId).SubmitLoginJsonRequest(submitLoginJsonRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SubmitLoginJson``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubmitLoginJson`: SubmitLoginJsonResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.SubmitLoginJson`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSubmitLoginJsonRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **submitLoginJsonRequest** | [**SubmitLoginJsonRequest**](SubmitLoginJsonRequest.md) |  | 

### Return type

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitOrgSelection

> string SubmitOrgSelection(ctx, orgId).Execute()

Submit organization selection



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
	resp, r, err := apiClient.OAuthAPI.SubmitOrgSelection(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.SubmitOrgSelection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubmitOrgSelection`: string
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.SubmitOrgSelection`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSubmitOrgSelectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Token

> TokenResponse Token(ctx, orgId).GrantType(grantType).Code(code).RedirectUri(redirectUri).CodeVerifier(codeVerifier).RefreshToken(refreshToken).DeviceCode(deviceCode).AuthReqId(authReqId).Scope(scope).Resource(resource).SubjectToken(subjectToken).SubjectTokenType(subjectTokenType).ActorToken(actorToken).ActorTokenType(actorTokenType).RequestedTokenType(requestedTokenType).Assertion(assertion).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()

OAuth 2.1 token endpoint



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
	grantType := "grantType_example" // string | 
	code := "code_example" // string |  (optional)
	redirectUri := "redirectUri_example" // string |  (optional)
	codeVerifier := "codeVerifier_example" // string |  (optional)
	refreshToken := "refreshToken_example" // string |  (optional)
	deviceCode := "deviceCode_example" // string |  (optional)
	authReqId := "authReqId_example" // string | CIBA (optional)
	scope := "scope_example" // string |  (optional)
	resource := "resource_example" // string |  (optional)
	subjectToken := "subjectToken_example" // string | Token exchange (RFC 8693) (optional)
	subjectTokenType := "subjectTokenType_example" // string |  (optional)
	actorToken := "actorToken_example" // string |  (optional)
	actorTokenType := "actorTokenType_example" // string |  (optional)
	requestedTokenType := "requestedTokenType_example" // string |  (optional)
	assertion := "assertion_example" // string | JWT bearer / ID-JAG grant (optional)
	clientId := "clientId_example" // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
	clientSecret := "clientSecret_example" // string | client_secret_post (optional)
	clientAssertionType := "clientAssertionType_example" // string |  (optional)
	clientAssertion := "clientAssertion_example" // string | private_key_jwt (RFC 7523) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OAuthAPI.Token(context.Background(), orgId).GrantType(grantType).Code(code).RedirectUri(redirectUri).CodeVerifier(codeVerifier).RefreshToken(refreshToken).DeviceCode(deviceCode).AuthReqId(authReqId).Scope(scope).Resource(resource).SubjectToken(subjectToken).SubjectTokenType(subjectTokenType).ActorToken(actorToken).ActorTokenType(actorTokenType).RequestedTokenType(requestedTokenType).Assertion(assertion).ClientId(clientId).ClientSecret(clientSecret).ClientAssertionType(clientAssertionType).ClientAssertion(clientAssertion).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OAuthAPI.Token``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Token`: TokenResponse
	fmt.Fprintf(os.Stdout, "Response from `OAuthAPI.Token`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **grantType** | **string** |  | 
 **code** | **string** |  | 
 **redirectUri** | **string** |  | 
 **codeVerifier** | **string** |  | 
 **refreshToken** | **string** |  | 
 **deviceCode** | **string** |  | 
 **authReqId** | **string** | CIBA | 
 **scope** | **string** |  | 
 **resource** | **string** |  | 
 **subjectToken** | **string** | Token exchange (RFC 8693) | 
 **subjectTokenType** | **string** |  | 
 **actorToken** | **string** |  | 
 **actorTokenType** | **string** |  | 
 **requestedTokenType** | **string** |  | 
 **assertion** | **string** | JWT bearer / ID-JAG grant | 
 **clientId** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | 
 **clientSecret** | **string** | client_secret_post | 
 **clientAssertionType** | **string** |  | 
 **clientAssertion** | **string** | private_key_jwt (RFC 7523) | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

