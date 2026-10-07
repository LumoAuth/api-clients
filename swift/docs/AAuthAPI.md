# AAuthAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizeAgent**](AAuthAPI.md#authorizeagent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.
[**getAgentJwks**](AAuthAPI.md#getagentjwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint
[**getAgentMetadata**](AAuthAPI.md#getagentmetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
[**getAgentMetadataById**](AAuthAPI.md#getagentmetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata
[**getIssuerJwks**](AAuthAPI.md#getissuerjwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.
[**getIssuerMetadata**](AAuthAPI.md#getissuermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
[**getResourceJwks**](AAuthAPI.md#getresourcejwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint
[**getResourceMetadata**](AAuthAPI.md#getresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)
[**getResourceMetadataById**](AAuthAPI.md#getresourcemetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata
[**issueAgentToken**](AAuthAPI.md#issueagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint
[**issueDelegateToken**](AAuthAPI.md#issuedelegatetoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.
[**issuePlatformToken**](AAuthAPI.md#issueplatformtoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token | 
[**issueResourceToken**](AAuthAPI.md#issueresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)
[**revokeAgentToken**](AAuthAPI.md#revokeagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.
[**verifyAuthToken**](AAuthAPI.md#verifyauthtoken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.
[**verifyResourceToken**](AAuthAPI.md#verifyresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).


# **authorizeAgent**
```swift
    open class func authorizeAgent(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user's browser to its authorization page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Agent Auth Endpoint - redirects to user consent page.
AAuthAPI.authorizeAgent(orgId: orgId) { (response, error) in
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

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentJwks**
```swift
    open class func getAgentJwks(orgId: String, agentId: String, completion: @escaping (_ data: JwksResponse?, _ error: Error?) -> Void)
```

Agent JWKS endpoint

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Agent JWKS endpoint
AAuthAPI.getAgentJwks(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentMetadata**
```swift
    open class func getAgentMetadata(orgId: String, completion: @escaping (_ data: [AnyCodable]?, _ error: Error?) -> Void)
```

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
AAuthAPI.getAgentMetadata(orgId: orgId) { (response, error) in
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

**[AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentMetadataById**
```swift
    open class func getAgentMetadataById(orgId: String, agentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Individual Agent Metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Individual Agent Metadata
AAuthAPI.getAgentMetadataById(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuerJwks**
```swift
    open class func getIssuerJwks(orgId: String, completion: @escaping (_ data: JwksResponse?, _ error: Error?) -> Void)
```

Auth Server JWKS endpoint for AAuth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Auth Server JWKS endpoint for AAuth.
AAuthAPI.getIssuerJwks(orgId: orgId) { (response, error) in
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

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuerMetadata**
```swift
    open class func getIssuerMetadata(orgId: String, completion: @escaping (_ data: GetIssuerMetadataResponse?, _ error: Error?) -> Void)
```

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
AAuthAPI.getIssuerMetadata(orgId: orgId) { (response, error) in
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

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceJwks**
```swift
    open class func getResourceJwks(orgId: String, resourceId: String, completion: @escaping (_ data: JwksResponse?, _ error: Error?) -> Void)
```

Resource JWKS endpoint

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let resourceId = "resourceId_example" // String | 

// Resource JWKS endpoint
AAuthAPI.getResourceJwks(orgId: orgId, resourceId: resourceId) { (response, error) in
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
 **resourceId** | **String** |  | 

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceMetadata**
```swift
    open class func getResourceMetadata(orgId: String, completion: @escaping (_ data: [AnyCodable]?, _ error: Error?) -> Void)
```

Resource Metadata (Section 8.3)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Resource Metadata (Section 8.3)
AAuthAPI.getResourceMetadata(orgId: orgId) { (response, error) in
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

**[AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceMetadataById**
```swift
    open class func getResourceMetadataById(orgId: String, resourceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Individual Resource Metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let resourceId = "resourceId_example" // String | 

// Individual Resource Metadata
AAuthAPI.getResourceMetadataById(orgId: orgId, resourceId: resourceId) { (response, error) in
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
 **resourceId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueAgentToken**
```swift
    open class func issueAgentToken(orgId: String, issueAgentTokenRequest: IssueAgentTokenRequest, completion: @escaping (_ data: IssueAgentTokenResponse?, _ error: Error?) -> Void)
```

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server's endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let issueAgentTokenRequest = IssueAgentTokenRequest(requestType: "requestType_example", resourceToken: "resourceToken_example", redirectUri: "redirectUri_example", code: "code_example", authToken: "authToken_example", refreshToken: "refreshToken_example") // IssueAgentTokenRequest | 

// Agent Token Endpoint
AAuthAPI.issueAgentToken(orgId: orgId, issueAgentTokenRequest: issueAgentTokenRequest) { (response, error) in
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
 **issueAgentTokenRequest** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md) |  | 

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDelegateToken**
```swift
    open class func issueDelegateToken(orgId: String, issueDelegateTokenRequest: IssueDelegateTokenRequest, completion: @escaping (_ data: IssueDelegateTokenResponse?, _ error: Error?) -> Void)
```

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let issueDelegateTokenRequest = IssueDelegateTokenRequest(delegateSub: "delegateSub_example", delegatePublicKey: 123, audience: 123) // IssueDelegateTokenRequest | 

// Issue an agent token to a delegate.
AAuthAPI.issueDelegateToken(orgId: orgId, issueDelegateTokenRequest: issueDelegateTokenRequest) { (response, error) in
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
 **issueDelegateTokenRequest** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md) |  | 

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuePlatformToken**
```swift
    open class func issuePlatformToken(orgId: String, issuePlatformTokenRequest: IssuePlatformTokenRequest, completion: @escaping (_ data: IssuePlatformTokenResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let issuePlatformTokenRequest = IssuePlatformTokenRequest(grantType: "grantType_example", subjectToken: "subjectToken_example", subjectTokenType: "subjectTokenType_example", scope: "scope_example") // IssuePlatformTokenRequest | 

AAuthAPI.issuePlatformToken(orgId: orgId, issuePlatformTokenRequest: issuePlatformTokenRequest) { (response, error) in
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
 **issuePlatformTokenRequest** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md) |  | 

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueResourceToken**
```swift
    open class func issueResourceToken(orgId: String, issueResourceTokenRequest: IssueResourceTokenRequest, completion: @escaping (_ data: IssueResourceTokenResponse?, _ error: Error?) -> Void)
```

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token binding an agent's request to the resource's identity.  The resource authenticates via HTTP Message Signature using its registered key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let issueResourceTokenRequest = IssueResourceTokenRequest(agent: "agent_example", agentJkt: "agentJkt_example", scope: "scope_example", authRequestUrl: "authRequestUrl_example", authServer: "authServer_example") // IssueResourceTokenRequest | 

// Resource Token Endpoint (Section 6)
AAuthAPI.issueResourceToken(orgId: orgId, issueResourceTokenRequest: issueResourceTokenRequest) { (response, error) in
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
 **issueResourceTokenRequest** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md) |  | 

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAgentToken**
```swift
    open class func revokeAgentToken(orgId: String, revokeAgentTokenRequest: RevokeAgentTokenRequest, completion: @escaping (_ data: RevokeAgentTokenResponse?, _ error: Error?) -> Void)
```

Revoke an auth token or refresh token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let revokeAgentTokenRequest = RevokeAgentTokenRequest(token: "token_example", tokenType: "tokenType_example") // RevokeAgentTokenRequest | 

// Revoke an auth token or refresh token.
AAuthAPI.revokeAgentToken(orgId: orgId, revokeAgentTokenRequest: revokeAgentTokenRequest) { (response, error) in
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
 **revokeAgentTokenRequest** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md) |  | 

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAuthToken**
```swift
    open class func verifyAuthToken(orgId: String, verifyAuthTokenRequest: VerifyAuthTokenRequest, completion: @escaping (_ data: VerifyAuthTokenResponse?, _ error: Error?) -> Void)
```

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent's incoming request matches the      key whose thumbprint is `cnf_jkt` in the response.  IMPORTANT — proof-of-possession is mandatory. A response of `{\"active\": true, ...}` from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent's request was produced with the key that hashes to `cnf_jkt`. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes `pop_required: true` to surface this contract to integrators who only inspect `active`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let verifyAuthTokenRequest = VerifyAuthTokenRequest(authToken: "authToken_example", resource: "resource_example") // VerifyAuthTokenRequest | 

// Auth Token Verification endpoint.
AAuthAPI.verifyAuthToken(orgId: orgId, verifyAuthTokenRequest: verifyAuthTokenRequest) { (response, error) in
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
 **verifyAuthTokenRequest** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md) |  | 

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyResourceToken**
```swift
    open class func verifyResourceToken(orgId: String, verifyResourceTokenRequest: VerifyResourceTokenRequest, completion: @escaping (_ data: VerifyResourceTokenResponse?, _ error: Error?) -> Void)
```

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let verifyResourceTokenRequest = VerifyResourceTokenRequest(resourceToken: "resourceToken_example", agent: "agent_example", agentJkt: "agentJkt_example") // VerifyResourceTokenRequest | 

// Resource Token Verification (for resources to validate their own tokens).
AAuthAPI.verifyResourceToken(orgId: orgId, verifyResourceTokenRequest: verifyResourceTokenRequest) { (response, error) in
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
 **verifyResourceTokenRequest** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md) |  | 

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

