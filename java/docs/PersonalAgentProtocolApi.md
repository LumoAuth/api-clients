# PersonalAgentProtocolApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**endPoppySession**](PersonalAgentProtocolApi.md#endPoppySession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session |
| [**getPoppyDocument**](PersonalAgentProtocolApi.md#getPoppyDocument) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain |
| [**getPoppyProtectedResourceMetadata**](PersonalAgentProtocolApi.md#getPoppyProtectedResourceMetadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain |
| [**getPoppySessionStatus**](PersonalAgentProtocolApi.md#getPoppySessionStatus) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session |
| [**getPoppyTasks**](PersonalAgentProtocolApi.md#getPoppyTasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9) |
| [**sendPoppyFeedback**](PersonalAgentProtocolApi.md#sendPoppyFeedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3) |
| [**verifyPoppySession**](PersonalAgentProtocolApi.md#verifyPoppySession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request |


<a id="endPoppySession"></a>
# **endPoppySession**
> EndPoppySessionResponse endPoppySession(orgId, endPoppySessionRequest)

End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    EndPoppySessionRequest endPoppySessionRequest = new EndPoppySessionRequest(); // EndPoppySessionRequest | 
    try {
      EndPoppySessionResponse result = apiInstance.endPoppySession(orgId, endPoppySessionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#endPoppySession");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md)|  | |

### Return type

[**EndPoppySessionResponse**](EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The Session is ended. &#x60;ended&#x60; is false when it had ended before. |  -  |
| **401** | invalid_client. |  -  |
| **403** | insufficient_scope. |  -  |
| **404** | not_found: unknown organization or Session. |  -  |
| **409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). |  -  |

<a id="getPoppyDocument"></a>
# **getPoppyDocument**
> PoppyDocument getPoppyDocument(domain, orgId)

poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization&#39;s Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String domain = "domain_example"; // String | A Company domain of the organization, such as example.com.
    String orgId = "orgId_example"; // String | 
    try {
      PoppyDocument result = apiInstance.getPoppyDocument(domain, orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#getPoppyDocument");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **domain** | **String**| A Company domain of the organization, such as example.com. | |
| **orgId** | **String**|  | |

### Return type

[**PoppyDocument**](PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The document (Personal Agent Protocol 3.1). |  -  |
| **404** | not_found: unknown organization, the protocol is switched off, or the domain is not one of its Company domains. |  -  |

<a id="getPoppyProtectedResourceMetadata"></a>
# **getPoppyProtectedResourceMetadata**
> PoppyProtectedResourceMetadata getPoppyProtectedResourceMetadata(domain, orgId)

Protected resource metadata of a Company domain

The RFC 9728 document that names the organization&#39;s issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String domain = "domain_example"; // String | 
    String orgId = "orgId_example"; // String | 
    try {
      PoppyProtectedResourceMetadata result = apiInstance.getPoppyProtectedResourceMetadata(domain, orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#getPoppyProtectedResourceMetadata");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **domain** | **String**|  | |
| **orgId** | **String**|  | |

### Return type

[**PoppyProtectedResourceMetadata**](PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The document (RFC 9728, Personal Agent Protocol 3.2). |  -  |
| **404** | not_found. |  -  |

<a id="getPoppySessionStatus"></a>
# **getPoppySessionStatus**
> GetPoppySessionStatusResponse getPoppySessionStatus(orgId, endPoppySessionRequest)

Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user&#39;s account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    EndPoppySessionRequest endPoppySessionRequest = new EndPoppySessionRequest(); // EndPoppySessionRequest | 
    try {
      GetPoppySessionStatusResponse result = apiInstance.getPoppySessionStatus(orgId, endPoppySessionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#getPoppySessionStatus");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md)|  | |

### Return type

[**GetPoppySessionStatusResponse**](GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The state of the Session. |  -  |
| **401** | invalid_client. |  -  |
| **403** | insufficient_scope. |  -  |
| **404** | not_found: unknown organization. |  -  |
| **409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). Answered after the calling application authenticated. |  -  |

<a id="getPoppyTasks"></a>
# **getPoppyTasks**
> PoppyTasksResponse getPoppyTasks(poppySession, poppyVersion, orgId)

Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String poppySession = "poppySession_example"; // String | The Session JWT of this request (specification 5.2).
    String poppyVersion = "1.0"; // String | 
    String orgId = "orgId_example"; // String | 
    try {
      PoppyTasksResponse result = apiInstance.getPoppyTasks(poppySession, poppyVersion, orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#getPoppyTasks");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **poppySession** | **String**| The Session JWT of this request (specification 5.2). | |
| **poppyVersion** | **String**|  | |
| **orgId** | **String**|  | |

### Return type

[**PoppyTasksResponse**](PoppyTasksResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The tasks response. The same for every Session. |  -  |
| **400** | invalid_session, session_ended or version_unsupported, in a JSON body. |  -  |
| **404** | not_found: the tasks endpoint is not hosted here. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

<a id="sendPoppyFeedback"></a>
# **sendPoppyFeedback**
> sendPoppyFeedback(poppySession, poppyVersion, orgId, sendPoppyFeedbackRequest)

Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String poppySession = "poppySession_example"; // String | 
    String poppyVersion = "1.0"; // String | 
    String orgId = "orgId_example"; // String | 
    SendPoppyFeedbackRequest sendPoppyFeedbackRequest = new SendPoppyFeedbackRequest(); // SendPoppyFeedbackRequest | 
    try {
      apiInstance.sendPoppyFeedback(poppySession, poppyVersion, orgId, sendPoppyFeedbackRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#sendPoppyFeedback");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **poppySession** | **String**|  | |
| **poppyVersion** | **String**|  | |
| **orgId** | **String**|  | |
| **sendPoppyFeedbackRequest** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | The report was accepted. No body. |  -  |
| **400** | invalid_session, session_ended, version_unsupported, or invalid_request for a malformed or too long report. |  -  |
| **401** | invalid_token, in WWW-Authenticate: the access token of a signed-in report is not valid. |  -  |
| **404** | not_found: feedback is not collected here. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

<a id="verifyPoppySession"></a>
# **verifyPoppySession**
> PoppyVerifyResult verifyPoppySession(orgId, poppyVerifyRequest)

Verify a Personal Agent&#39;s request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent&#39;s metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: &#x60;active&#x60; says whether the request is verified, and for a refusal &#x60;response&#x60; holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include &#x60;poppy:verify&#x60;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.PersonalAgentProtocolApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    PersonalAgentProtocolApi apiInstance = new PersonalAgentProtocolApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    PoppyVerifyRequest poppyVerifyRequest = new PoppyVerifyRequest(); // PoppyVerifyRequest | 
    try {
      PoppyVerifyResult result = apiInstance.verifyPoppySession(orgId, poppyVerifyRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PersonalAgentProtocolApi#verifyPoppySession");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **poppyVerifyRequest** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md)|  | |

### Return type

[**PoppyVerifyResult**](PoppyVerifyResult.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The verification result. |  -  |
| **400** | invalid_request: method, url or headers missing or malformed. |  -  |
| **401** | invalid_client: the calling application did not authenticate. |  -  |
| **403** | insufficient_scope: the calling application may not verify Session headers. |  -  |
| **404** | not_found: unknown organization. |  -  |
| **409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). Answered after the calling application authenticated. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

