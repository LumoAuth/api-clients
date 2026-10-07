# AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminMcpServersCreate**](#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server|
|[**adminMcpServersDelete**](#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server|
|[**adminMcpServersGet**](#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server|
|[**adminMcpServersList**](#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers|

# **adminMcpServersCreate**
> AdminMcpServersCreateResponse adminMcpServersCreate()

Body: name (required) — display name resource_uri (required) — RFC 8707 canonical URI; must be http(s)://, no fragment endpoint_url (optional) — actual MCP endpoint description (optional) scopes_supported (optional) — array OR space/comma-separated string transport (optional) — defaults to \"http_streamable\" auth_mode (optional) — defaults to \"oauth\" token_lifetime (optional, default 3600) — clamped to [60, 86400] allowed_client_ids (optional) — array of this organization\'s OAuth client ids;     unknown ids are a 422 (never persisted as policy) require_pkce (optional, default true) require_resource_param (optional, default true) require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only

### Example

```typescript
import {
    AdminMcpApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMcpApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminMcpServersCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminMcpServersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | MCP server created |  -  |
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

