# AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminMcpServersCreate**](#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server|
|[**adminMcpServersDelete**](#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server|
|[**adminMcpServersGet**](#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server|
|[**adminMcpServersGrantsList**](#adminmcpserversgrantslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server|
|[**adminMcpServersGrantsRemove**](#adminmcpserversgrantsremove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server|
|[**adminMcpServersGrantsSet**](#adminmcpserversgrantsset) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call|
|[**adminMcpServersList**](#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers|
|[**patchAdminMcpServersUpdate**](#patchadminmcpserversupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server|
|[**putAdminMcpServersUpdate**](#putadminmcpserversupdate) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server (same as PATCH: only the fields that are sent change)|

# **adminMcpServersCreate**
> AdminMcpServersCreateResponse adminMcpServersCreate(mcpServerWrite)

The `resource_uri` is stored and returned in canonical form: lower-case scheme and host, no default port, no trailing slash, no dot segments. Token requests match it in any equivalent spelling.

### Example

```typescript
import {
    AdminMcpApi,
    Configuration,
    McpServerWrite
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let mcpServerWrite: McpServerWrite; //

const { status, data } = await apiInstance.adminMcpServersCreate(
    orgId,
    mcpServerWrite
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mcpServerWrite** | **McpServerWrite**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | MCP server created |  -  |
|**400** | Invalid resource_uri, or a field that cannot be set (include_scope_in_challenge, bearer_methods_supported) |  -  |
|**409** | An MCP server with this resource_uri already exists |  -  |
|**422** | validation_error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersDelete**
> MessageResponse adminMcpServersDelete()


### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.adminMcpServersDelete(
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

**MessageResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | MCP server deleted |  -  |
|**404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGet**
> AdminMcpServersGetResponse adminMcpServersGet()


### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)

const { status, data } = await apiInstance.adminMcpServersGet(
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

**AdminMcpServersGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | MCP server |  -  |
|**404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsList**
> AdminMcpServersGrantsListResponse adminMcpServersGrantsList()


### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)
let agentId: string; //Only the grants of this agent (agentId or numeric id). (optional) (default to undefined)

const { status, data } = await apiInstance.adminMcpServersGrantsList(
    orgId,
    serverId,
    agentId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] | Only the grants of this agent (agentId or numeric id). | (optional) defaults to undefined|


### Return type

**AdminMcpServersGrantsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | One entry per agent that holds a grant on the server. |  -  |
|**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsRemove**
> AdminMcpServersGrantsRemoveResponse adminMcpServersGrantsRemove()


### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminMcpServersGrantsRemove(
    orgId,
    serverId,
    agentId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersGrantsRemoveResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The agent may no longer call tools of the server. |  -  |
|**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsSet**
> AdminMcpServersGrantsSetResponse adminMcpServersGrantsSet(adminMcpServersGrantsSetRequest)


### Example

```typescript
import {
    AdminMcpApi,
    Configuration,
    AdminMcpServersGrantsSetRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminMcpServersGrantsSetRequest: AdminMcpServersGrantsSetRequest; //

const { status, data } = await apiInstance.adminMcpServersGrantsSet(
    orgId,
    serverId,
    agentId,
    adminMcpServersGrantsSetRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminMcpServersGrantsSetRequest** | **AdminMcpServersGrantsSetRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersGrantsSetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The agent\&#39;s grants on the server after the change. |  -  |
|**400** | Neither tools nor all_tools sent, tools is not a list of names, a name contains / : # or *, is empty or too long, or more than 200 names |  -  |
|**403** | plan: granting needs the Fine-grained authorization feature |  -  |
|**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersList**
> AdminMcpServersListResponse adminMcpServersList()


### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminMcpServersList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | MCP servers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminMcpServersUpdate**
> AdminMcpServersCreateResponse patchAdminMcpServersUpdate(mcpServerWrite)

Only the fields that are sent change; each is judged as on create. `resource_uri` cannot be changed (400): register a new server for another address. Changes apply to the next token request.

### Example

```typescript
import {
    AdminMcpApi,
    Configuration,
    McpServerWrite
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)
let mcpServerWrite: McpServerWrite; //

const { status, data } = await apiInstance.patchAdminMcpServersUpdate(
    orgId,
    serverId,
    mcpServerWrite
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mcpServerWrite** | **McpServerWrite**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated MCP server |  -  |
|**400** | resource_uri changed, a switch that is not a JSON boolean, or a field that cannot be set (include_scope_in_challenge, bearer_methods_supported) |  -  |
|**404** | MCP server not found |  -  |
|**422** | validation_error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminMcpServersUpdate**
> AdminMcpServersCreateResponse putAdminMcpServersUpdate(mcpServerWrite)


### Example

```typescript
import {
    AdminMcpApi,
    Configuration,
    McpServerWrite
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)
let serverId: string; // (default to undefined)
let mcpServerWrite: McpServerWrite; //

const { status, data } = await apiInstance.putAdminMcpServersUpdate(
    orgId,
    serverId,
    mcpServerWrite
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mcpServerWrite** | **McpServerWrite**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **serverId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated MCP server |  -  |
|**400** | resource_uri changed, or a field that cannot be set |  -  |
|**404** | MCP server not found |  -  |
|**422** | validation_error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

