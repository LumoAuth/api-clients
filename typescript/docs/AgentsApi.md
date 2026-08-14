# AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**ask**](#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)|
|[**attest**](#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | |
|[**authorizeMcp**](#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).|
|[**createApproval**](#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | |
|[**getAgentCard**](#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | |
|[**getApprovalStatus**](#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | |
|[**getCurrentAgent**](#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent|
|[**registerAgent**](#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | |
|[**verifyAgentCard**](#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | |

# **ask**
> AskResponse ask(askRequest)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document.read\",   \"context\": {\"id\": \"123\"} }

### Example

```typescript
import {
    AgentsApi,
    Configuration,
    AskRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let askRequest: AskRequest; //

const { status, data } = await apiInstance.ask(
    orgId,
    askRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **askRequest** | **AskRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AskResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authorization decision for the requested action. |  -  |
|**400** | Missing required field: action. |  -  |
|**429** | Agent budget exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attest**
> attest()


### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.attest(
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

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizeMcp**
> AuthorizeMcpResponse authorizeMcp(authorizeMcpRequest)

The real request-path caller of {@see \\McpToolAuthorizationService::canInvoke()} — the piece that connects MCP authorization to agent identity. An MCP gateway/server asks \"may THIS agent invoke <server>/<tool>?\" and gets a Zanzibar-backed allow/deny (tool-level or server-wide grant). Denials and grants are both audited, closing the MCP-authorization audit blind spot.  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"invoices\", \"tool\": \"send_payment_reminder\" }

### Example

```typescript
import {
    AgentsApi,
    Configuration,
    AuthorizeMcpRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let authorizeMcpRequest: AuthorizeMcpRequest; //

const { status, data } = await apiInstance.authorizeMcp(
    orgId,
    authorizeMcpRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **authorizeMcpRequest** | **AuthorizeMcpRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AuthorizeMcpResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Allowed — the agent may invoke the tool. |  -  |
|**403** | Denied — no matching per-tool or server-wide grant. |  -  |
|**400** | server_id and tool are required, or contain forbidden characters. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createApproval**
> CreateApprovalResponse createApproval(createApprovalRequest)


### Example

```typescript
import {
    AgentsApi,
    Configuration,
    CreateApprovalRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let createApprovalRequest: CreateApprovalRequest; //

const { status, data } = await apiInstance.createApproval(
    orgId,
    createApprovalRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **createApprovalRequest** | **CreateApprovalRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CreateApprovalResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Approval request created and push sent. |  -  |
|**202** | User has no push device; an email sign-in fallback link was sent. |  -  |
|**400** | Invalid JSON, task_id, reason, impact, or missing on_behalf_of. |  -  |
|**403** | Caller is not an agent, is cross-tenant, or lacks delegation permission. |  -  |
|**404** | Tenant or target user not found. |  -  |
|**428** | User has no enrolled push device and the email fallback could not be sent. |  -  |
|**429** | Rate limited (per tenant/agent/user). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentCard**
> getAgentCard()


### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.getAgentCard(
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApprovalStatus**
> GetApprovalStatusResponse getApprovalStatus()


### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)
let token: string; // (default to undefined)

const { status, data } = await apiInstance.getApprovalStatus(
    orgId,
    token
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **token** | [**string**] |  | defaults to undefined|


### Return type

**GetApprovalStatusResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Current status of the approval request. |  -  |
|**403** | Caller is not an agent, or the request belongs to another agent. |  -  |
|**404** | Tenant or approval request not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentAgent**
> GetCurrentAgentResponse getCurrentAgent()

GET /orgs/{orgId}/api/v1/agents/me

### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getCurrentAgent(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetCurrentAgentResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Identity, capabilities, and workspace of the authenticated principal. |  -  |
|**401** | Unauthorized — no authenticated principal. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAgent**
> registerAgent()


### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.registerAgent(
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAgentCard**
> verifyAgentCard()


### Example

```typescript
import {
    AgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AgentsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.verifyAgentCard(
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

