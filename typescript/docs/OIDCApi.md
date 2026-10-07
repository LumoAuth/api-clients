# OIDCApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**checkSession**](#checksession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0)|
|[**logout**](#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0)|
|[**logoutPost**](#logoutpost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission)|
|[**userinfo**](#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint|
|[**userinfoPost**](#userinfopost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST)|

# **checkSession**
> string checkSession()

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage \"<client_id> <session_state>\" to learn whether the OP session changed. Not a JSON API.

### Example

```typescript
import {
    OIDCApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OIDCApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.checkSession(
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
|**200** | HTML page containing the session-state comparison script. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> string logout()

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session\'s clients. Not a JSON API.

### Example

```typescript
import {
    OIDCApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OIDCApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.logout(
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
|**200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session\&#39;s clients. |  -  |
|**302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
|**404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutPost**
> string logoutPost()

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

### Example

```typescript
import {
    OIDCApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OIDCApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.logoutPost(
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
|**200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session\&#39;s clients. |  -  |
|**302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
|**404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userinfo**
> UserinfoResponse userinfo()

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

### Example

```typescript
import {
    OIDCApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OIDCApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.userinfo(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**UserinfoResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Claims for the token\&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
|**400** | invalid_request — Authorization header missing or malformed. |  -  |
|**401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
|**403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userinfoPost**
> UserinfoResponse userinfoPost()

Identical to GET.

### Example

```typescript
import {
    OIDCApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new OIDCApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.userinfoPost(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**UserinfoResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Claims for the token\&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
|**400** | invalid_request — Authorization header missing or malformed. |  -  |
|**401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
|**403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

