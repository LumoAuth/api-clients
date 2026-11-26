# lumoauth_api_client.PersonalAgentProtocolApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**end_poppy_session**](PersonalAgentProtocolApi.md#end_poppy_session) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session
[**get_poppy_document**](PersonalAgentProtocolApi.md#get_poppy_document) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain
[**get_poppy_protected_resource_metadata**](PersonalAgentProtocolApi.md#get_poppy_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain
[**get_poppy_session_status**](PersonalAgentProtocolApi.md#get_poppy_session_status) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session
[**get_poppy_tasks**](PersonalAgentProtocolApi.md#get_poppy_tasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9)
[**send_poppy_feedback**](PersonalAgentProtocolApi.md#send_poppy_feedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3)
[**verify_poppy_session**](PersonalAgentProtocolApi.md#verify_poppy_session) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request


# **end_poppy_session**
> EndPoppySessionResponse end_poppy_session(org_id, end_poppy_session_request)

End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.end_poppy_session_request import EndPoppySessionRequest
from lumoauth_api_client.models.end_poppy_session_response import EndPoppySessionResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    org_id = 'org_id_example' # str | 
    end_poppy_session_request = lumoauth_api_client.EndPoppySessionRequest() # EndPoppySessionRequest | 

    try:
        # End a Session
        api_response = api_instance.end_poppy_session(org_id, end_poppy_session_request)
        print("The response of PersonalAgentProtocolApi->end_poppy_session:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->end_poppy_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **end_poppy_session_request** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md)|  | 

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
**200** | The Session is ended. &#x60;ended&#x60; is false when it had ended before. |  -  |
**401** | invalid_client. |  -  |
**403** | insufficient_scope. |  -  |
**404** | not_found: unknown organization or Session. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poppy_document**
> PoppyDocument get_poppy_document(domain, org_id)

poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization's Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.poppy_document import PoppyDocument
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    domain = 'domain_example' # str | A Company domain of the organization, such as example.com.
    org_id = 'org_id_example' # str | 

    try:
        # poppy.json of a Company domain
        api_response = api_instance.get_poppy_document(domain, org_id)
        print("The response of PersonalAgentProtocolApi->get_poppy_document:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->get_poppy_document: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **str**| A Company domain of the organization, such as example.com. | 
 **org_id** | **str**|  | 

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
**200** | The document (Personal Agent Protocol 3.1). |  -  |
**404** | not_found: unknown organization, the protocol is switched off, or the domain is not one of its Company domains. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poppy_protected_resource_metadata**
> PoppyProtectedResourceMetadata get_poppy_protected_resource_metadata(domain, org_id)

Protected resource metadata of a Company domain

The RFC 9728 document that names the organization's issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.poppy_protected_resource_metadata import PoppyProtectedResourceMetadata
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    domain = 'domain_example' # str | 
    org_id = 'org_id_example' # str | 

    try:
        # Protected resource metadata of a Company domain
        api_response = api_instance.get_poppy_protected_resource_metadata(domain, org_id)
        print("The response of PersonalAgentProtocolApi->get_poppy_protected_resource_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->get_poppy_protected_resource_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **str**|  | 
 **org_id** | **str**|  | 

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
**200** | The document (RFC 9728, Personal Agent Protocol 3.2). |  -  |
**404** | not_found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poppy_session_status**
> GetPoppySessionStatusResponse get_poppy_session_status(org_id, end_poppy_session_request)

Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user's account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.end_poppy_session_request import EndPoppySessionRequest
from lumoauth_api_client.models.get_poppy_session_status_response import GetPoppySessionStatusResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    org_id = 'org_id_example' # str | 
    end_poppy_session_request = lumoauth_api_client.EndPoppySessionRequest() # EndPoppySessionRequest | 

    try:
        # Look up a Session
        api_response = api_instance.get_poppy_session_status(org_id, end_poppy_session_request)
        print("The response of PersonalAgentProtocolApi->get_poppy_session_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->get_poppy_session_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **end_poppy_session_request** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md)|  | 

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
**200** | The state of the Session. |  -  |
**401** | invalid_client. |  -  |
**403** | insufficient_scope. |  -  |
**404** | not_found: unknown organization, or the protocol is switched off. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poppy_tasks**
> PoppyTasksResponse get_poppy_tasks(poppy_session, poppy_version, org_id)

Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.poppy_tasks_response import PoppyTasksResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    poppy_session = 'poppy_session_example' # str | The Session JWT of this request (specification 5.2).
    poppy_version = '1.0' # str | 
    org_id = 'org_id_example' # str | 

    try:
        # Tasks endpoint (Personal Agent Protocol, section 9)
        api_response = api_instance.get_poppy_tasks(poppy_session, poppy_version, org_id)
        print("The response of PersonalAgentProtocolApi->get_poppy_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->get_poppy_tasks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poppy_session** | **str**| The Session JWT of this request (specification 5.2). | 
 **poppy_version** | **str**|  | 
 **org_id** | **str**|  | 

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
**200** | The tasks response. The same for every Session. |  -  |
**400** | invalid_session, session_ended or version_unsupported, in a JSON body. |  -  |
**404** | not_found: the tasks endpoint is not hosted here. |  -  |
**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_poppy_feedback**
> send_poppy_feedback(poppy_session, poppy_version, org_id, send_poppy_feedback_request)

Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.send_poppy_feedback_request import SendPoppyFeedbackRequest
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    poppy_session = 'poppy_session_example' # str | 
    poppy_version = '1.0' # str | 
    org_id = 'org_id_example' # str | 
    send_poppy_feedback_request = lumoauth_api_client.SendPoppyFeedbackRequest() # SendPoppyFeedbackRequest | 

    try:
        # Feedback endpoint (Personal Agent Protocol 9.3)
        api_instance.send_poppy_feedback(poppy_session, poppy_version, org_id, send_poppy_feedback_request)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->send_poppy_feedback: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poppy_session** | **str**|  | 
 **poppy_version** | **str**|  | 
 **org_id** | **str**|  | 
 **send_poppy_feedback_request** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md)|  | 

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
**202** | The report was accepted. No body. |  -  |
**400** | invalid_session, session_ended, version_unsupported, or invalid_request for a malformed or too long report. |  -  |
**401** | invalid_token, in WWW-Authenticate: the access token of a signed-in report is not valid. |  -  |
**404** | not_found: feedback is not collected here. |  -  |
**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_poppy_session**
> PoppyVerifyResult verify_poppy_session(org_id, poppy_verify_request)

Verify a Personal Agent's request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent's metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.poppy_verify_request import PoppyVerifyRequest
from lumoauth_api_client.models.poppy_verify_result import PoppyVerifyResult
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.PersonalAgentProtocolApi(api_client)
    org_id = 'org_id_example' # str | 
    poppy_verify_request = lumoauth_api_client.PoppyVerifyRequest() # PoppyVerifyRequest | 

    try:
        # Verify a Personal Agent's request
        api_response = api_instance.verify_poppy_session(org_id, poppy_verify_request)
        print("The response of PersonalAgentProtocolApi->verify_poppy_session:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PersonalAgentProtocolApi->verify_poppy_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **poppy_verify_request** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md)|  | 

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
**200** | The verification result. |  -  |
**400** | invalid_request: method, url or headers missing or malformed. |  -  |
**401** | invalid_client: the calling application did not authenticate. |  -  |
**403** | insufficient_scope: the calling application may not verify Session headers. |  -  |
**404** | not_found: unknown organization, or the protocol is switched off. |  -  |
**429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

