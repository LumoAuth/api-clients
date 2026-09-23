# AAuthApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**authorizeAgent**](#authorizeagent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.|
|[**getAgentJwks**](#getagentjwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint|
|[**getAgentMetadata**](#getagentmetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.|
|[**getAgentMetadataById**](#getagentmetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata|
|[**getIssuerJwks**](#getissuerjwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.|
|[**getIssuerMetadata**](#getissuermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.|
|[**getResourceJwks**](#getresourcejwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint|
|[**getResourceMetadata**](#getresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)|
|[**getResourceMetadataById**](#getresourcemetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata|
|[**issueAgentToken**](#issueagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint|
|[**issueDelegateToken**](#issuedelegatetoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.|
|[**issuePlatformToken**](#issueplatformtoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token | |
|[**issueResourceToken**](#issueresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)|
|[**revokeAgentToken**](#revokeagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.|
|[**verifyAuthToken**](#verifyauthtoken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.|
|[**verifyResourceToken**](#verifyresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).|

# **authorizeAgent**
> authorizeAgent()

Per Section 9.4: The auth server redirects the user\'s browser to its authorization page.

### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.authorizeAgent(
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

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**302** | Redirect to the tenant portal AAuth consent page for the given request_token. |  -  |
|**400** | Missing request_token query parameter. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentJwks**
> JwksResponse getAgentJwks()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.getAgentJwks(
    orgId,
    agentId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**JwksResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The agent JWKS. |  -  |
|**404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentMetadata**
> Array<object> getAgentMetadata()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getAgentMetadata(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**Array<object>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Metadata documents for all active agents of this tenant (Section 8.1). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentMetadataById**
> object getAgentMetadataById()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.getAgentMetadataById(
    orgId,
    agentId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Metadata document for a single active agent. |  -  |
|**404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuerJwks**
> JwksResponse getIssuerJwks()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getIssuerJwks(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**JwksResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The auth server JWKS (public keys used to verify issued JWTs). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuerMetadata**
> GetIssuerMetadataResponse getIssuerMetadata()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getIssuerMetadata(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetIssuerMetadataResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | AAuth auth-server metadata document (Section 8.2). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceJwks**
> JwksResponse getResourceJwks()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let resourceId: string; // (default to undefined)

const { status, data } = await apiInstance.getResourceJwks(
    orgId,
    resourceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **resourceId** | [**string**] |  | defaults to undefined|


### Return type

**JwksResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The resource JWKS. |  -  |
|**404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceMetadata**
> Array<object> getResourceMetadata()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getResourceMetadata(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**Array<object>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Metadata documents for all active resources of this tenant (Section 8.3). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceMetadataById**
> object getResourceMetadataById()


### Example

```typescript
import {
    AAuthApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let resourceId: string; // (default to undefined)

const { status, data } = await apiInstance.getResourceMetadataById(
    orgId,
    resourceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **resourceId** | [**string**] |  | defaults to undefined|


### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Metadata document for a single active resource. |  -  |
|**404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueAgentToken**
> IssueAgentTokenResponse issueAgentToken(issueAgentTokenRequest)

Per Section 9: The agent token endpoint is the auth server\'s endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

### Example

```typescript
import {
    AAuthApi,
    Configuration,
    IssueAgentTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let issueAgentTokenRequest: IssueAgentTokenRequest; //

const { status, data } = await apiInstance.issueAgentToken(
    orgId,
    issueAgentTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **issueAgentTokenRequest** | **IssueAgentTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**IssueAgentTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | An auth token, or a request token + authorization URI when user consent is needed. |  -  |
|**400** | Invalid request (missing/unknown request_type, invalid body, invalid resource/redirect). |  -  |
|**401** | Agent-Auth challenge — missing/invalid Agent-Auth header, signature, or agent token. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDelegateToken**
> IssueDelegateTokenResponse issueDelegateToken(issueDelegateTokenRequest)

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

### Example

```typescript
import {
    AAuthApi,
    Configuration,
    IssueDelegateTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let issueDelegateTokenRequest: IssueDelegateTokenRequest; //

const { status, data } = await apiInstance.issueDelegateToken(
    orgId,
    issueDelegateTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **issueDelegateTokenRequest** | **IssueDelegateTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**IssueDelegateTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The issued agent token and its metadata. |  -  |
|**400** | Invalid JSON body, or missing delegate_sub / delegate_public_key. |  -  |
|**401** | Agent server HTTP-message-signature verification failed. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuePlatformToken**
> IssuePlatformTokenResponse issuePlatformToken(issuePlatformTokenRequest)


### Example

```typescript
import {
    AAuthApi,
    Configuration,
    IssuePlatformTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let issuePlatformTokenRequest: IssuePlatformTokenRequest; //

const { status, data } = await apiInstance.issuePlatformToken(
    orgId,
    issuePlatformTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **issuePlatformTokenRequest** | **IssuePlatformTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**IssuePlatformTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A short-lived, DPoP-bound core-agent access token accepted by JIT, the token vault, and the authz PDP. It carries cnf.jkt (thumbprint of the agent key) and must be presented with a DPoP proof from that key. |  -  |
|**400** | Invalid exchange request (grant_type / subject_token). |  -  |
|**401** | The AAuth token is invalid, expired, or revoked, or the RFC 9421 request signature is missing/invalid/replayed. |  -  |
|**403** | Denied by a conditional access policy. |  -  |
|**429** | Rate limit exceeded (per IP or per agent). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueResourceToken**
> IssueResourceTokenResponse issueResourceToken(issueResourceTokenRequest)

Called by a registered resource to create a resource token binding an agent\'s request to the resource\'s identity.  The resource authenticates via HTTP Message Signature using its registered key.

### Example

```typescript
import {
    AAuthApi,
    Configuration,
    IssueResourceTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let issueResourceTokenRequest: IssueResourceTokenRequest; //

const { status, data } = await apiInstance.issueResourceToken(
    orgId,
    issueResourceTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **issueResourceTokenRequest** | **IssueResourceTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**IssueResourceTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A resource token binding the agent request to the resource identity. |  -  |
|**400** | Invalid JSON body, missing agent/agent_jkt, or unsupported scope. |  -  |
|**401** | Resource authentication (HTTP message signature) failed. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAgentToken**
> RevokeAgentTokenResponse revokeAgentToken(revokeAgentTokenRequest)


### Example

```typescript
import {
    AAuthApi,
    Configuration,
    RevokeAgentTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let revokeAgentTokenRequest: RevokeAgentTokenRequest; //

const { status, data } = await apiInstance.revokeAgentToken(
    orgId,
    revokeAgentTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **revokeAgentTokenRequest** | **RevokeAgentTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**RevokeAgentTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Revocation acknowledged (always 200 — existence of the token is not disclosed). |  -  |
|**400** | Missing token parameter. |  -  |
|**401** | Agent-Auth challenge — authentication/signature verification failed. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAuthToken**
> VerifyAuthTokenResponse verifyAuthToken(verifyAuthTokenRequest)

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent\'s incoming request matches the      key whose thumbprint is `cnf_jkt` in the response.  IMPORTANT — proof-of-possession is mandatory. A response of `{\"active\": true, ...}` from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent\'s request was produced with the key that hashes to `cnf_jkt`. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes `pop_required: true` to surface this contract to integrators who only inspect `active`.

### Example

```typescript
import {
    AAuthApi,
    Configuration,
    VerifyAuthTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let verifyAuthTokenRequest: VerifyAuthTokenRequest; //

const { status, data } = await apiInstance.verifyAuthToken(
    orgId,
    verifyAuthTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **verifyAuthTokenRequest** | **VerifyAuthTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**VerifyAuthTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Introspection result. active&#x3D;true does NOT imply PoP — the caller MUST verify the HTTP message signature against cnf_jkt. |  -  |
|**400** | Missing auth_token or resource. |  -  |
|**401** | Resource authentication failed. |  -  |
|**403** | Requested resource does not match the authenticated resource. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyResourceToken**
> VerifyResourceTokenResponse verifyResourceToken(verifyResourceTokenRequest)

A convenience endpoint—resources can also validate locally.

### Example

```typescript
import {
    AAuthApi,
    Configuration,
    VerifyResourceTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AAuthApi(configuration);

let orgId: string; // (default to undefined)
let verifyResourceTokenRequest: VerifyResourceTokenRequest; //

const { status, data } = await apiInstance.verifyResourceToken(
    orgId,
    verifyResourceTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **verifyResourceTokenRequest** | **VerifyResourceTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**VerifyResourceTokenResponse**

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Introspection result; active&#x3D;false with an error when the token is invalid. |  -  |
|**400** | Missing resource_token, agent, or agent_jkt. |  -  |
|**401** | Resource authentication failed. |  -  |
|**403** | Resource token is not valid for the authenticated resource. |  -  |
|**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

