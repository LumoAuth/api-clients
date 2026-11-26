# \PersonalAgentProtocolApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**end_poppy_session**](PersonalAgentProtocolApi.md#end_poppy_session) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session
[**get_poppy_document**](PersonalAgentProtocolApi.md#get_poppy_document) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain
[**get_poppy_protected_resource_metadata**](PersonalAgentProtocolApi.md#get_poppy_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain
[**get_poppy_session_status**](PersonalAgentProtocolApi.md#get_poppy_session_status) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session
[**get_poppy_tasks**](PersonalAgentProtocolApi.md#get_poppy_tasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9)
[**send_poppy_feedback**](PersonalAgentProtocolApi.md#send_poppy_feedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3)
[**verify_poppy_session**](PersonalAgentProtocolApi.md#verify_poppy_session) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent's request



## end_poppy_session

> models::EndPoppySessionResponse end_poppy_session(org_id, end_poppy_session_request)
End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**end_poppy_session_request** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | [required] |

### Return type

[**models::EndPoppySessionResponse**](EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_poppy_document

> models::PoppyDocument get_poppy_document(domain, org_id)
poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization's Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** | A Company domain of the organization, such as example.com. | [required] |
**org_id** | **String** |  | [required] |

### Return type

[**models::PoppyDocument**](PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_poppy_protected_resource_metadata

> models::PoppyProtectedResourceMetadata get_poppy_protected_resource_metadata(domain, org_id)
Protected resource metadata of a Company domain

The RFC 9728 document that names the organization's issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** |  | [required] |
**org_id** | **String** |  | [required] |

### Return type

[**models::PoppyProtectedResourceMetadata**](PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_poppy_session_status

> models::GetPoppySessionStatusResponse get_poppy_session_status(org_id, end_poppy_session_request)
Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user's account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**end_poppy_session_request** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  | [required] |

### Return type

[**models::GetPoppySessionStatusResponse**](GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_poppy_tasks

> models::PoppyTasksResponse get_poppy_tasks(poppy_session, poppy_version, org_id)
Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**poppy_session** | **String** | The Session JWT of this request (specification 5.2). | [required] |
**poppy_version** | **String** |  | [required] |
**org_id** | **String** |  | [required] |

### Return type

[**models::PoppyTasksResponse**](PoppyTasksResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## send_poppy_feedback

> send_poppy_feedback(poppy_session, poppy_version, org_id, send_poppy_feedback_request)
Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**poppy_session** | **String** |  | [required] |
**poppy_version** | **String** |  | [required] |
**org_id** | **String** |  | [required] |
**send_poppy_feedback_request** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_poppy_session

> models::PoppyVerifyResult verify_poppy_session(org_id, poppy_verify_request)
Verify a Personal Agent's request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent's metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**poppy_verify_request** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md) |  | [required] |

### Return type

[**models::PoppyVerifyResult**](PoppyVerifyResult.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

