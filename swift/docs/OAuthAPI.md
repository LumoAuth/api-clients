# OAuthAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthAPI.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**backchannelAuthorize**](OAuthAPI.md#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**checkEmailFirst**](OAuthAPI.md#checkemailfirst) | **POST** /orgs/{orgId}/api/v1/oauth/check-email | Sign-in methods for an email-first form
[**deviceAuthorization**](OAuthAPI.md#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**getClientConfiguration**](OAuthAPI.md#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**getDeviceVerification**](OAuthAPI.md#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**getOrgSelection**](OAuthAPI.md#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**introspect**](OAuthAPI.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**par**](OAuthAPI.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**registerClient**](OAuthAPI.md#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**requestMagicLink**](OAuthAPI.md#requestmagiclink) | **POST** /orgs/{orgId}/api/v1/oauth/magic-link | Request a sign-in link by email
[**revoke**](OAuthAPI.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**socialCallback**](OAuthAPI.md#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**socialCallbackPost**](OAuthAPI.md#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**socialLogin**](OAuthAPI.md#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**submitAuthorization**](OAuthAPI.md#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**submitDeviceVerification**](OAuthAPI.md#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
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
    open class func backchannelAuthorize(orgId: String, scope: String, loginHint: String? = nil, loginHintToken: String? = nil, idTokenHint: String? = nil, bindingMessage: String? = nil, acrValues: String? = nil, requestedExpiry: Int? = nil, clientNotificationToken: String? = nil, authorizationDetails: String? = nil, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, completion: @escaping (_ data: BackchannelAuthorizeResponse?, _ error: Error?) -> Void)
```

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let scope = "scope_example" // String | 
let loginHint = "loginHint_example" // String |  (optional)
let loginHintToken = "loginHintToken_example" // String |  (optional)
let idTokenHint = "idTokenHint_example" // String |  (optional)
let bindingMessage = "bindingMessage_example" // String |  (optional)
let acrValues = "acrValues_example" // String |  (optional)
let requestedExpiry = 987 // Int |  (optional)
let clientNotificationToken = "clientNotificationToken_example" // String |  (optional)
let authorizationDetails = "authorizationDetails_example" // String |  (optional)
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)

// CIBA backchannel authentication request
OAuthAPI.backchannelAuthorize(orgId: orgId, scope: scope, loginHint: loginHint, loginHintToken: loginHintToken, idTokenHint: idTokenHint, bindingMessage: bindingMessage, acrValues: acrValues, requestedExpiry: requestedExpiry, clientNotificationToken: clientNotificationToken, authorizationDetails: authorizationDetails, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion) { (response, error) in
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
 **scope** | **String** |  | 
 **loginHint** | **String** |  | [optional] 
 **loginHintToken** | **String** |  | [optional] 
 **idTokenHint** | **String** |  | [optional] 
 **bindingMessage** | **String** |  | [optional] 
 **acrValues** | **String** |  | [optional] 
 **requestedExpiry** | **Int** |  | [optional] 
 **clientNotificationToken** | **String** |  | [optional] 
 **authorizationDetails** | **String** |  | [optional] 
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 

### Return type

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkEmailFirst**
```swift
    open class func checkEmailFirst(orgId: String, checkEmailFirstRequest: CheckEmailFirstRequest, completion: @escaping (_ data: CheckEmailFirstResponse?, _ error: Error?) -> Void)
```

Sign-in methods for an email-first form

For applications that render their own sign-in form. Returns the sign-in methods that the organization offers, so that the form can show the next step after an address was typed. The answer does not depend on the address: `exists` is always `true`, and a known address and a new one get the same answer. Takes no credential and signs nobody in. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let checkEmailFirstRequest = CheckEmailFirstRequest(email: "email_example", clientId: "clientId_example") // CheckEmailFirstRequest | 

// Sign-in methods for an email-first form
OAuthAPI.checkEmailFirst(orgId: orgId, checkEmailFirstRequest: checkEmailFirstRequest) { (response, error) in
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
 **checkEmailFirstRequest** | [**CheckEmailFirstRequest**](CheckEmailFirstRequest.md) |  | 

### Return type

[**CheckEmailFirstResponse**](CheckEmailFirstResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deviceAuthorization**
```swift
    open class func deviceAuthorization(orgId: String, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, scope: String? = nil, resource: String? = nil, authorizationDetails: String? = nil, completion: @escaping (_ data: DeviceAuthorizationResponse?, _ error: Error?) -> Void)
```

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)
let scope = "scope_example" // String | Space-separated scopes. (optional)
let resource = "resource_example" // String | RFC 8707 resource indicator. (optional)
let authorizationDetails = "authorizationDetails_example" // String | RFC 9396, a JSON array as text. (optional)

// Device authorization request (RFC 8628)
OAuthAPI.deviceAuthorization(orgId: orgId, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion, scope: scope, resource: resource, authorizationDetails: authorizationDetails) { (response, error) in
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
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 
 **scope** | **String** | Space-separated scopes. | [optional] 
 **resource** | **String** | RFC 8707 resource indicator. | [optional] 
 **authorizationDetails** | **String** | RFC 9396, a JSON array as text. | [optional] 

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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
    open class func introspect(orgId: String, token: String, tokenTypeHint: TokenTypeHint_introspect? = nil, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, completion: @escaping (_ data: IntrospectResponse?, _ error: Error?) -> Void)
```

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let token = "token_example" // String | 
let tokenTypeHint = "tokenTypeHint_example" // String |  (optional)
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)

// Token introspection (RFC 7662)
OAuthAPI.introspect(orgId: orgId, token: token, tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion) { (response, error) in
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
 **token** | **String** |  | 
 **tokenTypeHint** | **String** |  | [optional] 
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **par**
```swift
    open class func par(orgId: String, responseType: String? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, nonce: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, request: String? = nil, resource: String? = nil, authorizationDetails: String? = nil, prompt: String? = nil, loginHint: String? = nil, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, completion: @escaping (_ data: ParResponse?, _ error: Error?) -> Void)
```

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let responseType = "responseType_example" // String |  (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let scope = "scope_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let nonce = "nonce_example" // String |  (optional)
let codeChallenge = "codeChallenge_example" // String |  (optional)
let codeChallengeMethod = "codeChallengeMethod_example" // String |  (optional)
let request = "request_example" // String | A signed request object (JAR, RFC 9101). (optional)
let resource = "resource_example" // String |  (optional)
let authorizationDetails = "authorizationDetails_example" // String |  (optional)
let prompt = "prompt_example" // String |  (optional)
let loginHint = "loginHint_example" // String |  (optional)
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)

// Pushed authorization request (RFC 9126)
OAuthAPI.par(orgId: orgId, responseType: responseType, redirectUri: redirectUri, scope: scope, state: state, nonce: nonce, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, request: request, resource: resource, authorizationDetails: authorizationDetails, prompt: prompt, loginHint: loginHint, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion) { (response, error) in
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
 **responseType** | **String** |  | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **nonce** | **String** |  | [optional] 
 **codeChallenge** | **String** |  | [optional] 
 **codeChallengeMethod** | **String** |  | [optional] 
 **request** | **String** | A signed request object (JAR, RFC 9101). | [optional] 
 **resource** | **String** |  | [optional] 
 **authorizationDetails** | **String** |  | [optional] 
 **prompt** | **String** |  | [optional] 
 **loginHint** | **String** |  | [optional] 
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 

### Return type

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerClient**
```swift
    open class func registerClient(orgId: String, registerClientRequest: RegisterClientRequest, completion: @escaping (_ data: RegisterClientResponse?, _ error: Error?) -> Void)
```

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it. Refused with invalid_client_metadata: grant_types other than authorization_code and refresh_token, response_types other than code and none, subject_type other than public, sector_identifier_uri, request_uris, userinfo_signed_response_alg, an id_token_signed_response_alg other than the organization's signing algorithm, and every encryption member (id_token_encrypted_response_*, userinfo_encrypted_response_*, request_object_encryption_*, authorization_encrypted_response_*).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let registerClientRequest = RegisterClientRequest(redirectUris: ["redirectUris_example"], clientName: "clientName_example", grantTypes: ["grantTypes_example"], responseTypes: ["responseTypes_example"], tokenEndpointAuthMethod: "tokenEndpointAuthMethod_example", scope: "scope_example", jwksUri: "jwksUri_example", jwks: "TODO", applicationType: "applicationType_example", postLogoutRedirectUris: ["postLogoutRedirectUris_example"], backchannelLogoutUri: "backchannelLogoutUri_example", frontchannelLogoutUri: "frontchannelLogoutUri_example", clientUri: "clientUri_example", logoUri: "logoUri_example", policyUri: "policyUri_example", tosUri: "tosUri_example", contacts: ["contacts_example"]) // RegisterClientRequest | RFC 7591 client metadata.

// Dynamic client registration (RFC 7591 / OIDC DCR)
OAuthAPI.registerClient(orgId: orgId, registerClientRequest: registerClientRequest) { (response, error) in
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
 **registerClientRequest** | [**RegisterClientRequest**](RegisterClientRequest.md) | RFC 7591 client metadata. | 

### Return type

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestMagicLink**
```swift
    open class func requestMagicLink(orgId: String, requestMagicLinkRequest: RequestMagicLinkRequest, completion: @escaping (_ data: RequestMagicLinkResponse?, _ error: Error?) -> Void)
```

Request a sign-in link by email

For applications that render their own sign-in form. Mails a single-use sign-in link to the address when it belongs to an account of the organization, and gives the same answer when it does not. Signs nobody in and mints no tokens: the person opens the link, confirms on the hosted page, and is then sent to `return_to`, where the application starts its normal authorization flow. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestMagicLinkRequest = RequestMagicLinkRequest(email: "email_example", clientId: "clientId_example", returnTo: "returnTo_example", captchaToken: "captchaToken_example") // RequestMagicLinkRequest | 

// Request a sign-in link by email
OAuthAPI.requestMagicLink(orgId: orgId, requestMagicLinkRequest: requestMagicLinkRequest) { (response, error) in
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
 **requestMagicLinkRequest** | [**RequestMagicLinkRequest**](RequestMagicLinkRequest.md) |  | 

### Return type

[**RequestMagicLinkResponse**](RequestMagicLinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke**
```swift
    open class func revoke(orgId: String, token: String, tokenTypeHint: TokenTypeHint_revoke? = nil, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let token = "token_example" // String | 
let tokenTypeHint = "tokenTypeHint_example" // String |  (optional)
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)

// Token revocation (RFC 7009)
OAuthAPI.revoke(orgId: orgId, token: token, tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion) { (response, error) in
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
 **token** | **String** |  | 
 **tokenTypeHint** | **String** |  | [optional] 
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 

### Return type

**AnyCodable**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

# **submitLoginJson**
```swift
    open class func submitLoginJson(orgId: String, submitLoginJsonRequest: SubmitLoginJsonRequest, completion: @escaping (_ data: SubmitLoginJsonResponse?, _ error: Error?) -> Void)
```

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let submitLoginJsonRequest = SubmitLoginJsonRequest(email: "email_example", password: "password_example", captchaToken: "captchaToken_example") // SubmitLoginJsonRequest | 

// Programmatic (JSON) login for the authorization flow
OAuthAPI.submitLoginJson(orgId: orgId, submitLoginJsonRequest: submitLoginJsonRequest) { (response, error) in
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
 **submitLoginJsonRequest** | [**SubmitLoginJsonRequest**](SubmitLoginJsonRequest.md) |  | 

### Return type

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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
    open class func token(orgId: String, grantType: String, code: String? = nil, redirectUri: String? = nil, codeVerifier: String? = nil, refreshToken: String? = nil, deviceCode: String? = nil, authReqId: String? = nil, scope: String? = nil, resource: String? = nil, subjectToken: String? = nil, subjectTokenType: String? = nil, actorToken: String? = nil, actorTokenType: String? = nil, requestedTokenType: String? = nil, assertion: String? = nil, clientId: String? = nil, clientSecret: String? = nil, clientAssertionType: String? = nil, clientAssertion: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let grantType = "grantType_example" // String | 
let code = "code_example" // String |  (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let codeVerifier = "codeVerifier_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String |  (optional)
let deviceCode = "deviceCode_example" // String |  (optional)
let authReqId = "authReqId_example" // String | CIBA (optional)
let scope = "scope_example" // String |  (optional)
let resource = "resource_example" // String |  (optional)
let subjectToken = "subjectToken_example" // String | Token exchange (RFC 8693) (optional)
let subjectTokenType = "subjectTokenType_example" // String |  (optional)
let actorToken = "actorToken_example" // String |  (optional)
let actorTokenType = "actorTokenType_example" // String |  (optional)
let requestedTokenType = "requestedTokenType_example" // String |  (optional)
let assertion = "assertion_example" // String | JWT bearer / ID-JAG grant (optional)
let clientId = "clientId_example" // String | Required for a public client; a confidential client may authenticate with HTTP Basic instead. (optional)
let clientSecret = "clientSecret_example" // String | client_secret_post (optional)
let clientAssertionType = "clientAssertionType_example" // String |  (optional)
let clientAssertion = "clientAssertion_example" // String | private_key_jwt (RFC 7523) (optional)

// OAuth 2.1 token endpoint
OAuthAPI.token(orgId: orgId, grantType: grantType, code: code, redirectUri: redirectUri, codeVerifier: codeVerifier, refreshToken: refreshToken, deviceCode: deviceCode, authReqId: authReqId, scope: scope, resource: resource, subjectToken: subjectToken, subjectTokenType: subjectTokenType, actorToken: actorToken, actorTokenType: actorTokenType, requestedTokenType: requestedTokenType, assertion: assertion, clientId: clientId, clientSecret: clientSecret, clientAssertionType: clientAssertionType, clientAssertion: clientAssertion) { (response, error) in
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
 **grantType** | **String** |  | 
 **code** | **String** |  | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **codeVerifier** | **String** |  | [optional] 
 **refreshToken** | **String** |  | [optional] 
 **deviceCode** | **String** |  | [optional] 
 **authReqId** | **String** | CIBA | [optional] 
 **scope** | **String** |  | [optional] 
 **resource** | **String** |  | [optional] 
 **subjectToken** | **String** | Token exchange (RFC 8693) | [optional] 
 **subjectTokenType** | **String** |  | [optional] 
 **actorToken** | **String** |  | [optional] 
 **actorTokenType** | **String** |  | [optional] 
 **requestedTokenType** | **String** |  | [optional] 
 **assertion** | **String** | JWT bearer / ID-JAG grant | [optional] 
 **clientId** | **String** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] 
 **clientSecret** | **String** | client_secret_post | [optional] 
 **clientAssertionType** | **String** |  | [optional] 
 **clientAssertion** | **String** | private_key_jwt (RFC 7523) | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

