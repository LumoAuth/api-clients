# McpApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getProtectedResourceMetadata**](#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)|
|[**getProtectedResourceMetadataRoot**](#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)|
|[**getServer**](#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.|
|[**getServerChallenge**](#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge|
|[**listServers**](#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.|
|[**postServerChallenge**](#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)|

# **getProtectedResourceMetadata**
> ProtectedResourceMetadata getProtectedResourceMetadata()

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.getProtectedResourceMetadata(
    orgId,
    serverId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**ProtectedResourceMetadata**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Protected resource metadata. scopes_supported only when the server declares scopes; the dpop_* members only when the server requires DPoP-bound tokens. Any additional admin-supplied metadata fields are merged in (they can never override resource, authorization_servers, bearer_methods_supported or scopes_supported). |  -  |
|**400** | not_applicable — the MCP server does not require authorization. |  -  |
|**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProtectedResourceMetadataRoot**
> GetProtectedResourceMetadataRoot200Response getProtectedResourceMetadataRoot()

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getProtectedResourceMetadataRoot(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetProtectedResourceMetadataRoot200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Either a single server\&#39;s protected resource metadata (same shape as the per-server endpoint) or a resource list. |  -  |
|**404** | not_found — unknown organization, or no protected MCP servers configured. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServer**
> GetServerResponse getServer()

Management endpoint — requires tenant admin authentication.

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.getServer(
    orgId,
    serverId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**GetServerResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A single MCP server with discovery metadata. |  -  |
|**403** | Caller lacks the settings.manage permission. |  -  |
|**404** | Tenant or MCP server not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerChallenge**
> GetServerChallengeResponse getServerChallenge()

Test endpoint that behaves like the MCP server\'s protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.getServerChallenge(
    orgId,
    serverId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**GetServerChallengeResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The access token is valid for this MCP server. |  -  |
|**401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
|**403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
|**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
|**429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServers**
> ListServersResponse listServers()

Management endpoint — requires tenant admin authentication.

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listServers(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListServersResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | List of active MCP servers for the tenant. |  -  |
|**403** | Caller lacks the settings.manage permission. |  -  |
|**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postServerChallenge**
> GetServerChallengeResponse postServerChallenge()

Identical to GET; the HTTP method is only recorded in the audit trail.

### Example

```typescript
import {
    McpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new McpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.postServerChallenge(
    orgId,
    serverId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**GetServerChallengeResponse**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The access token is valid for this MCP server. |  -  |
|**401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
|**403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
|**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
|**429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

