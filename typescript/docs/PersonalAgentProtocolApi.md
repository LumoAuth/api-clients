# PersonalAgentProtocolApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**endPoppySession**](#endpoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session|
|[**getPoppyDocument**](#getpoppydocument) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain|
|[**getPoppyProtectedResourceMetadata**](#getpoppyprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain|
|[**getPoppySessionStatus**](#getpoppysessionstatus) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session|
|[**getPoppyTasks**](#getpoppytasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9)|
|[**sendPoppyFeedback**](#sendpoppyfeedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3)|
|[**verifyPoppySession**](#verifypoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent\&#39;s request|

# **endPoppySession**
> EndPoppySessionResponse endPoppySession(endPoppySessionRequest)

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration,
    EndPoppySessionRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let orgId: string; // (default to undefined)
let endPoppySessionRequest: EndPoppySessionRequest; //

const { status, data } = await apiInstance.endPoppySession(
    orgId,
    endPoppySessionRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **endPoppySessionRequest** | **EndPoppySessionRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**EndPoppySessionResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Session is ended. &#x60;ended&#x60; is false when it had ended before. |  -  |
|**401** | invalid_client. |  -  |
|**403** | insufficient_scope. |  -  |
|**404** | not_found: unknown organization or Session. |  -  |
|**409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyDocument**
> PoppyDocument getPoppyDocument()

The Personal Agent Protocol discovery document of one of the organization\'s Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let domain: string; //A Company domain of the organization, such as example.com. (default to undefined)
let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getPoppyDocument(
    domain,
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **domain** | [**string**] | A Company domain of the organization, such as example.com. | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PoppyDocument**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The document (Personal Agent Protocol 3.1). |  -  |
|**404** | not_found: unknown organization, the protocol is switched off, or the domain is not one of its Company domains. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyProtectedResourceMetadata**
> PoppyProtectedResourceMetadata getPoppyProtectedResourceMetadata()

The RFC 9728 document that names the organization\'s issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let domain: string; // (default to undefined)
let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getPoppyProtectedResourceMetadata(
    domain,
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **domain** | [**string**] |  | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PoppyProtectedResourceMetadata**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The document (RFC 9728, Personal Agent Protocol 3.2). |  -  |
|**404** | not_found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppySessionStatus**
> GetPoppySessionStatusResponse getPoppySessionStatus(endPoppySessionRequest)

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user\'s account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration,
    EndPoppySessionRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let orgId: string; // (default to undefined)
let endPoppySessionRequest: EndPoppySessionRequest; //

const { status, data } = await apiInstance.getPoppySessionStatus(
    orgId,
    endPoppySessionRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **endPoppySessionRequest** | **EndPoppySessionRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetPoppySessionStatusResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The state of the Session. |  -  |
|**401** | invalid_client. |  -  |
|**403** | insufficient_scope. |  -  |
|**404** | not_found: unknown organization. |  -  |
|**409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). Answered after the calling application authenticated. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoppyTasks**
> PoppyTasksResponse getPoppyTasks()

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let poppySession: string; //The Session JWT of this request (specification 5.2). (default to undefined)
let poppyVersion: string; // (default to undefined)
let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getPoppyTasks(
    poppySession,
    poppyVersion,
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **poppySession** | [**string**] | The Session JWT of this request (specification 5.2). | defaults to undefined|
| **poppyVersion** | [**string**] |  | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PoppyTasksResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The tasks response. The same for every Session. |  -  |
|**400** | invalid_session, session_ended or version_unsupported, in a JSON body. |  -  |
|**404** | not_found: the tasks endpoint is not hosted here. |  -  |
|**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPoppyFeedback**
> sendPoppyFeedback(sendPoppyFeedbackRequest)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration,
    SendPoppyFeedbackRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let poppySession: string; // (default to undefined)
let poppyVersion: string; // (default to undefined)
let orgId: string; // (default to undefined)
let sendPoppyFeedbackRequest: SendPoppyFeedbackRequest; //

const { status, data } = await apiInstance.sendPoppyFeedback(
    poppySession,
    poppyVersion,
    orgId,
    sendPoppyFeedbackRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **sendPoppyFeedbackRequest** | **SendPoppyFeedbackRequest**|  | |
| **poppySession** | [**string**] |  | defaults to undefined|
| **poppyVersion** | [**string**] |  | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**202** | The report was accepted. No body. |  -  |
|**400** | invalid_session, session_ended, version_unsupported, or invalid_request for a malformed or too long report. |  -  |
|**401** | invalid_token, in WWW-Authenticate: the access token of a signed-in report is not valid. |  -  |
|**404** | not_found: feedback is not collected here. |  -  |
|**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPoppySession**
> PoppyVerifyResult verifyPoppySession(poppyVerifyRequest)

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent\'s metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

### Example

```typescript
import {
    PersonalAgentProtocolApi,
    Configuration,
    PoppyVerifyRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new PersonalAgentProtocolApi(configuration);

let orgId: string; // (default to undefined)
let poppyVerifyRequest: PoppyVerifyRequest; //

const { status, data } = await apiInstance.verifyPoppySession(
    orgId,
    poppyVerifyRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **poppyVerifyRequest** | **PoppyVerifyRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PoppyVerifyResult**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The verification result. |  -  |
|**400** | invalid_request: method, url or headers missing or malformed. |  -  |
|**401** | invalid_client: the calling application did not authenticate. |  -  |
|**403** | insufficient_scope: the calling application may not verify Session headers. |  -  |
|**404** | not_found: unknown organization. |  -  |
|**409** | protocol_disabled: the Personal Agent Protocol is switched off for this organization (or not in its plan). Answered after the calling application authenticated. |  -  |
|**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

