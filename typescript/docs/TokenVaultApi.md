# TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getConnectionToken**](#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection|
|[**listConnections**](#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use|

# **getConnectionToken**
> GetConnectionTokenResponse getConnectionToken()

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {\"user_id\": \"<uuid or email>\"} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

### Example

```typescript
import {
    TokenVaultApi,
    Configuration,
    GetConnectionTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new TokenVaultApi(configuration);

let orgId: string; // (default to undefined)
let connectionId: string; // (default to undefined)
let getConnectionTokenRequest: GetConnectionTokenRequest; // (optional)

const { status, data } = await apiInstance.getConnectionToken(
    orgId,
    connectionId,
    getConnectionTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **getConnectionTokenRequest** | **GetConnectionTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **connectionId** | [**string**] |  | defaults to undefined|


### Return type

**GetConnectionTokenResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The provider access token. |  -  |
|**400** | invalid_user_id. |  -  |
|**403** | agent_token_required, cross_tenant, delegation_not_permitted, agent_not_allowed, delegation_not_allowed or connection_disabled. |  -  |
|**404** | tenant_not_found, connection_not_found or grant_not_found. |  -  |
|**409** | grant_revoked, grant_expired or refresh_failed. |  -  |
|**429** | rate_limited. |  -  |
|**503** | refresh_in_progress (Retry-After: 2) or provider_unavailable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnections**
> ListConnectionsResponse listConnections()

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

### Example

```typescript
import {
    TokenVaultApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new TokenVaultApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listConnections(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListConnectionsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Connections available to the agent. connections and data hold the same list (data + pagination is the standard list envelope). |  -  |
|**403** | agent_token_required (caller is not an agent) or cross_tenant. |  -  |
|**404** | tenant_not_found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

