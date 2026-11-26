# PersonalAgentProtocolAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endPoppySession**](PersonalAgentProtocolAPI.md#endpoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session
[**getPoppyDocument**](PersonalAgentProtocolAPI.md#getpoppydocument) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain
[**getPoppyProtectedResourceMetadata**](PersonalAgentProtocolAPI.md#getpoppyprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain
[**getPoppySessionStatus**](PersonalAgentProtocolAPI.md#getpoppysessionstatus) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session
[**getPoppyTasks**](PersonalAgentProtocolAPI.md#getpoppytasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9)
[**sendPoppyFeedback**](PersonalAgentProtocolAPI.md#sendpoppyfeedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3)
[**verifyPoppySession**](PersonalAgentProtocolAPI.md#verifypoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request


# **endPoppySession**
```swift
    open class func endPoppySession(orgId: String, endPoppySessionRequest: EndPoppySessionRequest, completion: @escaping (_ data: EndPoppySessionResponse?, _ error: Error?) -> Void)
```

End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let endPoppySessionRequest = EndPoppySessionRequest(personalAgent: "personalAgent_example", sid: "sid_example") // EndPoppySessionRequest | 

// End a Session
PersonalAgentProtocolAPI.endPoppySession(orgId: orgId, endPoppySessionRequest: endPoppySessionRequest) { (response, error) in
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
 **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | 

### Return type

[**EndPoppySessionResponse**](EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyDocument**
```swift
    open class func getPoppyDocument(domain: String, orgId: String, completion: @escaping (_ data: PoppyDocument?, _ error: Error?) -> Void)
```

poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization's Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let domain = "domain_example" // String | A Company domain of the organization, such as example.com.
let orgId = "orgId_example" // String | 

// poppy.json of a Company domain
PersonalAgentProtocolAPI.getPoppyDocument(domain: domain, orgId: orgId) { (response, error) in
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
 **domain** | **String** | A Company domain of the organization, such as example.com. | 
 **orgId** | **String** |  | 

### Return type

[**PoppyDocument**](PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyProtectedResourceMetadata**
```swift
    open class func getPoppyProtectedResourceMetadata(domain: String, orgId: String, completion: @escaping (_ data: PoppyProtectedResourceMetadata?, _ error: Error?) -> Void)
```

Protected resource metadata of a Company domain

The RFC 9728 document that names the organization's issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let domain = "domain_example" // String | 
let orgId = "orgId_example" // String | 

// Protected resource metadata of a Company domain
PersonalAgentProtocolAPI.getPoppyProtectedResourceMetadata(domain: domain, orgId: orgId) { (response, error) in
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
 **domain** | **String** |  | 
 **orgId** | **String** |  | 

### Return type

[**PoppyProtectedResourceMetadata**](PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppySessionStatus**
```swift
    open class func getPoppySessionStatus(orgId: String, endPoppySessionRequest: EndPoppySessionRequest, completion: @escaping (_ data: GetPoppySessionStatusResponse?, _ error: Error?) -> Void)
```

Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user's account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let endPoppySessionRequest = EndPoppySessionRequest(personalAgent: "personalAgent_example", sid: "sid_example") // EndPoppySessionRequest | 

// Look up a Session
PersonalAgentProtocolAPI.getPoppySessionStatus(orgId: orgId, endPoppySessionRequest: endPoppySessionRequest) { (response, error) in
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
 **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | 

### Return type

[**GetPoppySessionStatusResponse**](GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyTasks**
```swift
    open class func getPoppyTasks(poppySession: String, poppyVersion: String, orgId: String, completion: @escaping (_ data: PoppyTasksResponse?, _ error: Error?) -> Void)
```

Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let poppySession = "poppySession_example" // String | The Session JWT of this request (specification 5.2).
let poppyVersion = "poppyVersion_example" // String | 
let orgId = "orgId_example" // String | 

// Tasks endpoint (Personal Agent Protocol, section 9)
PersonalAgentProtocolAPI.getPoppyTasks(poppySession: poppySession, poppyVersion: poppyVersion, orgId: orgId) { (response, error) in
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
 **poppySession** | **String** | The Session JWT of this request (specification 5.2). | 
 **poppyVersion** | **String** |  | 
 **orgId** | **String** |  | 

### Return type

[**PoppyTasksResponse**](PoppyTasksResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPoppyFeedback**
```swift
    open class func sendPoppyFeedback(poppySession: String, poppyVersion: String, orgId: String, sendPoppyFeedbackRequest: SendPoppyFeedbackRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let poppySession = "poppySession_example" // String | 
let poppyVersion = "poppyVersion_example" // String | 
let orgId = "orgId_example" // String | 
let sendPoppyFeedbackRequest = SendPoppyFeedbackRequest(task: "task_example", description: "description_example") // SendPoppyFeedbackRequest | 

// Feedback endpoint (Personal Agent Protocol 9.3)
PersonalAgentProtocolAPI.sendPoppyFeedback(poppySession: poppySession, poppyVersion: poppyVersion, orgId: orgId, sendPoppyFeedbackRequest: sendPoppyFeedbackRequest) { (response, error) in
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
 **poppySession** | **String** |  | 
 **poppyVersion** | **String** |  | 
 **orgId** | **String** |  | 
 **sendPoppyFeedbackRequest** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPoppySession**
```swift
    open class func verifyPoppySession(orgId: String, poppyVerifyRequest: PoppyVerifyRequest, completion: @escaping (_ data: PoppyVerifyResult?, _ error: Error?) -> Void)
```

Verify a Personal Agent's request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent's metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let poppyVerifyRequest = PoppyVerifyRequest(method: "method_example", url: "url_example", headers: "TODO", requiredScope: PoppyVerifyRequest_required_scope(), resource: "resource_example", allowReplay: false) // PoppyVerifyRequest | 

// Verify a Personal Agent's request
PersonalAgentProtocolAPI.verifyPoppySession(orgId: orgId, poppyVerifyRequest: poppyVerifyRequest) { (response, error) in
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
 **poppyVerifyRequest** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md) |  | 

### Return type

[**PoppyVerifyResult**](PoppyVerifyResult.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

