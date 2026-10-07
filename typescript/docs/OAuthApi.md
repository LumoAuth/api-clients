# OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**authorize**](#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint|
|[**backchannelAuthorize**](#backchannelauthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request|
|[**deviceAuthorization**](#deviceauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)|
|[**getClientConfiguration**](#getclientconfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)|
|[**getDeviceVerification**](#getdeviceverification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)|
|[**getOrgSelection**](#getorgselection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page|
|[**introspect**](#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)|
|[**par**](#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)|
|[**passkeyLogin**](#passkeylogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point|
|[**registerClient**](#registerclient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)|
|[**revoke**](#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)|
|[**socialCallback**](#socialcallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback|
|[**socialCallbackPost**](#socialcallbackpost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)|
|[**socialLogin**](#sociallogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login|
|[**submitAuthorization**](#submitauthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)|
|[**submitDeviceVerification**](#submitdeviceverification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification|
|[**submitLogin**](#submitlogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission|
|[**submitLoginJson**](#submitloginjson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow|
|[**submitOrgSelection**](#submitorgselection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection|
|[**token**](#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint|

# **authorize**
> string authorize()

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client\'s redirect_uri in the requested response_mode. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.authorize(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
|**303** | Authorization response delivered to the client\&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
|**302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
|**400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
|**429** | too_many_requests (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backchannelAuthorize**
> BackchannelAuthorizeResponse backchannelAuthorize()

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.backchannelAuthorize(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**BackchannelAuthorizeResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authentication request accepted (CIBA Core §7.3). The hint is never confirmed: an unknown user yields an unstored auth_req_id of the same shape. interval is present for poll and ping delivery modes (always for agent-initiated requests). |  -  |
|**400** | invalid_request, unauthorized_client (CIBA not enabled for the client or plan), invalid_scope, missing_user_code / invalid_user_code or invalid_authorization_details. |  -  |
|**401** | invalid_client — client authentication failed. |  -  |
|**403** | unauthorized_client (agent_id named but not authenticated by that agent) or access_denied. |  -  |
|**429** | too_many_requests, or slow_down when the target user already has too many pending requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deviceAuthorization**
> DeviceAuthorizationResponse deviceAuthorization()

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.deviceAuthorization(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**DeviceAuthorizationResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Device authorization response (RFC 8628 §3.2). |  -  |
|**400** | invalid_request (client_id missing), invalid_client (unknown / inactive client), unauthorized_client (grant not allowed) or invalid_scope. |  -  |
|**401** | invalid_client — a confidential client failed to authenticate. |  -  |
|**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientConfiguration**
> RegisteredClientMetadata getClientConfiguration()

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.getClientConfiguration(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**RegisteredClientMetadata**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Registered client metadata (OIDC Dynamic Client Registration §4.3). Never includes client_secret or registration_access_token; optional members are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
|**401** | invalid_token — registration access token missing, invalid, for another client, or presented at a different issuer than the registration (WWW-Authenticate: Bearer). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceVerification**
> string getDeviceVerification()

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getDeviceVerification(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
|**302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
|**429** | HTML error page — too many attempts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgSelection**
> string getOrgSelection()

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getOrgSelection(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML organization selector page. |  -  |
|**302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
|**404** | Unknown organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspect**
> IntrospectResponse introspect()

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.introspect(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**IntrospectResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Introspection response (RFC 7662 §2.2). An inactive, expired, revoked or unknown token yields only {\&quot;active\&quot;: false}. For an active token the optional members are present when known: username only for user-bound tokens; iss/aud only for tokens bound to a client; nbf/jti only for JWT access tokens; empty-string values are omitted. |  -  |
|**400** | invalid_request — token parameter missing. |  -  |
|**401** | invalid_client — client authentication failed. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **par**
> ParResponse par()

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.par(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ParResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Pushed authorization request created (RFC 9126 §2.2). |  -  |
|**400** | invalid_request / invalid_target / invalid_request_object, or the tenant is unknown. |  -  |
|**401** | invalid_client — client authentication failed. |  -  |
|**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passkeyLogin**
> passkeyLogin()

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.passkeyLogin(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect to the hosted login page. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerClient**
> RegisterClientResponse registerClient()

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.registerClient(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**RegisterClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Client registered (OIDC Dynamic Client Registration §3.2). client_secret / client_secret_expires_at only for confidential clients; registration_access_token and registration_client_uri when a registration access token was issued; the remaining optional members echo registered metadata and are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
|**400** | invalid_request (invalid JSON / unknown organization), invalid_client_metadata or invalid_redirect_uri. |  -  |
|**401** | access_denied — initial access token required or invalid (WWW-Authenticate: Bearer). |  -  |
|**403** | access_denied — dynamic registration disabled for this organization, or the API key is not authorized for it. |  -  |
|**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke**
> object revoke()

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.revoke(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**object**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Revocation acknowledged — always 200 with an empty JSON object, whether or not the token existed (RFC 7009 §2.2). |  -  |
|**400** | invalid_request (token parameter missing) or unsupported_token_type. |  -  |
|**401** | invalid_client — client authentication failed. |  -  |
|**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialCallback**
> socialCallback()

Receives the provider\'s authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)
let provider: string; // (default to undefined)

const { status, data } = await apiInstance.socialCallback(
    orgId,
    provider
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **provider** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialCallbackPost**
> socialCallbackPost()

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)
let provider: string; // (default to undefined)

const { status, data } = await apiInstance.socialCallbackPost(
    orgId,
    provider
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **provider** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **socialLogin**
> socialLogin()

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider\'s authorization endpoint. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)
let provider: string; // (default to undefined)

const { status, data } = await apiInstance.socialLogin(
    orgId,
    provider
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **provider** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect to the external provider\&#39;s authorization endpoint — or back to the hosted login page when the organization, provider or redirect target is invalid. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitAuthorization**
> string submitAuthorization()

Same as GET; also receives the consent form submission. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.submitAuthorization(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
|**303** | Authorization response delivered to the client\&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
|**302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
|**400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
|**429** | too_many_requests (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitDeviceVerification**
> string submitDeviceVerification()

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.submitDeviceVerification(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
|**302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
|**429** | HTML error page — too many attempts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitLogin**
> submitLogin()

Receives the hosted OAuth login page\'s form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.submitLogin(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect to /oauth/authorize with the original client_id, redirect_uri, state, scope, PKCE and nonce parameters. |  * Location -  <br>  |
|**404** | Unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitLoginJson**
> SubmitLoginJsonResponse submitLoginJson()

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.submitLoginJson(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**SubmitLoginJsonResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Signed in (status&#x3D;complete — continue to /oauth/authorize) or a second factor is required (status&#x3D;mfa_required with the challenge page URL). |  -  |
|**400** | {\&quot;status\&quot;:\&quot;invalid_request\&quot;} or {\&quot;status\&quot;:\&quot;captcha_required\&quot;,\&quot;message\&quot;:…}. |  -  |
|**401** | {\&quot;status\&quot;:\&quot;invalid_credentials\&quot;}. |  -  |
|**403** | {\&quot;status\&quot;:\&quot;blocked\&quot;} or {\&quot;status\&quot;:\&quot;inactive\&quot;}. |  -  |
|**404** | {\&quot;status\&quot;:\&quot;not_found\&quot;} — unknown or inactive organization. |  -  |
|**429** | {\&quot;status\&quot;:\&quot;rate_limited\&quot;}. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitOrgSelection**
> string submitOrgSelection()

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.submitOrgSelection(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | HTML organization selector page. |  -  |
|**302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
|**404** | Unknown organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **token**
> TokenResponse token()

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Example

```typescript
import {
    OAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.token(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**TokenResponse**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Token response (RFC 6749 §5.1). Which optional members are present depends on the grant: refresh_token only when the client may use the refresh_token grant; id_token for authorization_code / CIBA / device grants with the openid scope; issued_token_type for token exchange (including ID-JAG and Txn-Token, whose token_type is N_A and which carry no scope unless scopes were granted); authorization_details, jit_request_id and task_id only for agent-initiated CIBA. Always sent with Cache-Control: no-store. |  * DPoP-Nonce - Fresh server nonce when the request carried a DPoP proof (RFC 9449 §8). <br>  |
|**400** | invalid_request / invalid_grant / unsupported_grant_type / invalid_scope (RFC 6749 §5.2). |  -  |
|**401** | invalid_client — client authentication failed. |  -  |
|**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

