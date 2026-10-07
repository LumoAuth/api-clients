# OAuthAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthAPI.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**backchannelAuthorize**](OAuthAPI.md#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**deviceAuthorization**](OAuthAPI.md#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**getClientConfiguration**](OAuthAPI.md#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**getDeviceVerification**](OAuthAPI.md#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**getOrgSelection**](OAuthAPI.md#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**introspect**](OAuthAPI.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**par**](OAuthAPI.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**passkeyLogin**](OAuthAPI.md#passkeylogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point
[**registerClient**](OAuthAPI.md#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**revoke**](OAuthAPI.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**socialCallback**](OAuthAPI.md#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**socialCallbackPost**](OAuthAPI.md#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**socialLogin**](OAuthAPI.md#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**submitAuthorization**](OAuthAPI.md#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**submitDeviceVerification**](OAuthAPI.md#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
[**submitLogin**](OAuthAPI.md#submitlogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission
[**submitLoginJson**](OAuthAPI.md#submitloginjson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
[**submitOrgSelection**](OAuthAPI.md#submitorgselection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
[**token**](OAuthAPI.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint


# **authorize**
```swift
    open class func authorize(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client's redirect_uri in the requested response_mode. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// OAuth 2.1 / OIDC authorization endpoint
OAuthAPI.authorize(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backchannelAuthorize**
```swift
    open class func backchannelAuthorize(orgId: String, completion: @escaping (_ data: BackchannelAuthorizeResponse?, _ error: Error?) -> Void)
```

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// CIBA backchannel authentication request
OAuthAPI.backchannelAuthorize(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deviceAuthorization**
```swift
    open class func deviceAuthorization(orgId: String, completion: @escaping (_ data: DeviceAuthorizationResponse?, _ error: Error?) -> Void)
```

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Device authorization request (RFC 8628)
OAuthAPI.deviceAuthorization(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientConfiguration**
```swift
    open class func getClientConfiguration(orgId: String, clientId: String, completion: @escaping (_ data: RegisteredClientMetadata?, _ error: Error?) -> Void)
```

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
OAuthAPI.getClientConfiguration(orgId: orgId, clientId: clientId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **clientId** | **String** |  | 

### Return type

[**RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceVerification**
```swift
    open class func getDeviceVerification(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Device verification page (RFC 8628 §3.3)
OAuthAPI.getDeviceVerification(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgSelection**
```swift
    open class func getOrgSelection(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Organization selector page
OAuthAPI.getOrgSelection(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspect**
```swift
    open class func introspect(orgId: String, completion: @escaping (_ data: IntrospectResponse?, _ error: Error?) -> Void)
```

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Token introspection (RFC 7662)
OAuthAPI.introspect(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **par**
```swift
    open class func par(orgId: String, completion: @escaping (_ data: ParResponse?, _ error: Error?) -> Void)
```

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Pushed authorization request (RFC 9126)
OAuthAPI.par(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passkeyLogin**
```swift
    open class func passkeyLogin(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Passkey login entry point

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Passkey login entry point
OAuthAPI.passkeyLogin(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerClient**
```swift
    open class func registerClient(orgId: String, completion: @escaping (_ data: RegisterClientResponse?, _ error: Error?) -> Void)
```

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Dynamic client registration (RFC 7591 / OIDC DCR)
OAuthAPI.registerClient(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke**
```swift
    open class func revoke(orgId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Token revocation (RFC 7009)
OAuthAPI.revoke(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialCallback**
```swift
    open class func socialCallback(orgId: String, provider: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Social / enterprise identity-provider callback

Receives the provider's authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let provider = "provider_example" // String | 

// Social / enterprise identity-provider callback
OAuthAPI.socialCallback(orgId: orgId, provider: provider) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **provider** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialCallbackPost**
```swift
    open class func socialCallbackPost(orgId: String, provider: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let provider = "provider_example" // String | 

// Social / enterprise identity-provider callback (form_post)
OAuthAPI.socialCallbackPost(orgId: orgId, provider: provider) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **provider** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialLogin**
```swift
    open class func socialLogin(orgId: String, provider: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider's authorization endpoint. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let provider = "provider_example" // String | 

// Start social / enterprise identity-provider login
OAuthAPI.socialLogin(orgId: orgId, provider: provider) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **provider** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitAuthorization**
```swift
    open class func submitAuthorization(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// OAuth 2.1 / OIDC authorization endpoint (form submission)
OAuthAPI.submitAuthorization(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitDeviceVerification**
```swift
    open class func submitDeviceVerification(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Submit device verification
OAuthAPI.submitDeviceVerification(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitLogin**
```swift
    open class func submitLogin(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Hosted login form submission

Receives the hosted OAuth login page's form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Hosted login form submission
OAuthAPI.submitLogin(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitLoginJson**
```swift
    open class func submitLoginJson(orgId: String, completion: @escaping (_ data: SubmitLoginJsonResponse?, _ error: Error?) -> Void)
```

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Programmatic (JSON) login for the authorization flow
OAuthAPI.submitLoginJson(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitOrgSelection**
```swift
    open class func submitOrgSelection(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Submit organization selection
OAuthAPI.submitOrgSelection(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **token**
```swift
    open class func token(orgId: String, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// OAuth 2.1 token endpoint
OAuthAPI.token(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

