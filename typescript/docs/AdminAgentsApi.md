# AdminAgentsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminAgentsActivate**](#adminagentsactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent|
|[**adminAgentsAgentsDisable**](#adminagentsagentsdisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent|
|[**adminAgentsAgentsEnable**](#adminagentsagentsenable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent|
|[**adminAgentsAgentsRotateKey**](#adminagentsagentsrotatekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key|
|[**adminAgentsCreate**](#adminagentscreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent|
|[**adminAgentsDeactivate**](#adminagentsdeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent|
|[**adminAgentsDelete**](#adminagentsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent|
|[**adminAgentsGenerateToken**](#adminagentsgeneratetoken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent|
|[**adminAgentsGet**](#adminagentsget) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId|
|[**adminAgentsGetScopes**](#adminagentsgetscopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities|
|[**adminAgentsList**](#adminagentslist) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant|
|[**adminAgentsReportUsage**](#adminagentsreportusage) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/usage | Report model tokens and cost for an agent|
|[**adminAgentsRevokeKey**](#adminagentsrevokekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)|
|[**adminAgentsRotateCredentials**](#adminagentsrotatecredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials|
|[**adminAgentsSetScopes**](#adminagentssetscopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities|
|[**patchAdminAgentsUpdate**](#patchadminagentsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent|
|[**putAdminAgentsUpdate**](#putadminagentsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent|

# **adminAgentsActivate**
> AdminAgentsActivateResponse adminAgentsActivate()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsActivate(
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

**AdminAgentsActivateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent activated. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsDisable**
> AdminAgentsAgentsDisableResponse adminAgentsAgentsDisable()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsAgentsDisable(
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

**AdminAgentsAgentsDisableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent disabled. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsEnable**
> AdminAgentsAgentsEnableResponse adminAgentsAgentsEnable()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsAgentsEnable(
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

**AdminAgentsAgentsEnableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent enabled. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsRotateKey**
> AdminAgentsAgentsRotateKeyResponse adminAgentsAgentsRotateKey()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsAgentsRotateKeyRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminAgentsAgentsRotateKeyRequest: AdminAgentsAgentsRotateKeyRequest; //Optional lifetime of the new API key. Without either field the current expiry date is kept, unless it has already passed (then the new key gets 180 days). (optional)

const { status, data } = await apiInstance.adminAgentsAgentsRotateKey(
    orgId,
    agentId,
    adminAgentsAgentsRotateKeyRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsAgentsRotateKeyRequest** | **AdminAgentsAgentsRotateKeyRequest**| Optional lifetime of the new API key. Without either field the current expiry date is kept, unless it has already passed (then the new key gets 180 days). | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsAgentsRotateKeyResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | API key rotated. The new key is returned ONCE and cannot be retrieved again. |  -  |
|**400** | The agent does not authenticate with an API key (identity type other than api_key), or the lifetime is invalid. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsCreate**
> AdminAgentsCreateResponse adminAgentsCreate(adminAgentsCreateRequest)


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsCreateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let adminAgentsCreateRequest: AdminAgentsCreateRequest; //

const { status, data } = await apiInstance.adminAgentsCreate(
    orgId,
    adminAgentsCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsCreateRequest** | **AdminAgentsCreateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Agent created. The generated credential/secret is returned ONCE and cannot be retrieved again. |  -  |
|**400** | Missing required field: name, or an invalid budgetPolicy (unknown key, or a value that is not a number greater than zero). |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsDeactivate**
> AdminAgentsDeactivateResponse adminAgentsDeactivate()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsDeactivate(
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

**AdminAgentsDeactivateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent deactivated. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsDelete**
> AdminAgentsDeleteResponse adminAgentsDelete()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsDelete(
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

**AdminAgentsDeleteResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent deleted. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGenerateToken**
> AdminAgentsGenerateTokenResponse adminAgentsGenerateToken()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsGenerateTokenRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminAgentsGenerateTokenRequest: AdminAgentsGenerateTokenRequest; // (optional)

const { status, data } = await apiInstance.adminAgentsGenerateToken(
    orgId,
    agentId,
    adminAgentsGenerateTokenRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsGenerateTokenRequest** | **AdminAgentsGenerateTokenRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsGenerateTokenResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A generated agent token. The token value is returned ONCE. |  -  |
|**400** | Inactive agent, an agent that only takes DPoP-bound tokens (a minted token cannot be bound to its key), requested scopes outside the agent\&#39;s capabilities, a resource that is not an active MCP server of this organization, or expiresIn above 3600 without a resource. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |
|**429** | budget_exceeded: the agent budget is spent. A token mint counts as one call. Retry-After holds the seconds until the spent window starts again. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGet**
> AdminAgentsGetResponse adminAgentsGet()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsGet(
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

**AdminAgentsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The agent record. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGetScopes**
> AdminAgentsGetScopesResponse adminAgentsGetScopes()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsGetScopes(
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

**AdminAgentsGetScopesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent scopes/capabilities. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsList**
> AdminAgentsListResponse adminAgentsList()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let sortBy: 'name' | 'agentId' | 'status' | 'createdAt' | 'lastUsedAt'; //Sort field. Default: name. Another value is ignored. (optional) (default to undefined)
let sortDir: 'ASC' | 'DESC'; //Sort direction, used with sortBy. (optional) (default to 'ASC')

const { status, data } = await apiInstance.adminAgentsList(
    orgId,
    sortBy,
    sortDir
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **sortBy** | [**&#39;name&#39; | &#39;agentId&#39; | &#39;status&#39; | &#39;createdAt&#39; | &#39;lastUsedAt&#39;**]**Array<&#39;name&#39; &#124; &#39;agentId&#39; &#124; &#39;status&#39; &#124; &#39;createdAt&#39; &#124; &#39;lastUsedAt&#39;>** | Sort field. Default: name. Another value is ignored. | (optional) defaults to undefined|
| **sortDir** | [**&#39;ASC&#39; | &#39;DESC&#39;**]**Array<&#39;ASC&#39; &#124; &#39;DESC&#39;>** | Sort direction, used with sortBy. | (optional) defaults to 'ASC'|


### Return type

**AdminAgentsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Paginated list of agents. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsReportUsage**
> AdminAgentsReportUsageResponse adminAgentsReportUsage(adminAgentsReportUsageRequest)

For a trusted component of your organization, such as an AI gateway\'s spend callback or an orchestrator, that sees the agent\'s model calls. Adds the tokens and cost to the agent\'s budget windows (current UTC hour, day and month), exactly like POST /agents/me/usage from the agent itself. The report adds no API call and is accepted even when the budget is spent.

### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsReportUsageRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminAgentsReportUsageRequest: AdminAgentsReportUsageRequest; //

const { status, data } = await apiInstance.adminAgentsReportUsage(
    orgId,
    agentId,
    adminAgentsReportUsageRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsReportUsageRequest** | **AdminAgentsReportUsageRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsReportUsageResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Recorded. |  -  |
|**400** | tokens or cost_usd is missing, negative, too large or not a number. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsRevokeKey**
> AdminAgentsRevokeKeyResponse adminAgentsRevokeKey()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAgentsRevokeKey(
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

**AdminAgentsRevokeKeyResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent API key revoked (nullified). |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsRotateCredentials**
> AdminAgentsRotateCredentialsResponse adminAgentsRotateCredentials()


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsAgentsRotateKeyRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminAgentsAgentsRotateKeyRequest: AdminAgentsAgentsRotateKeyRequest; //For an api_key agent, the optional lifetime of the new key (ignored for a client secret). Without either field the current expiry date is kept, unless it has already passed (then the new key gets 180 days). (optional)

const { status, data } = await apiInstance.adminAgentsRotateCredentials(
    orgId,
    agentId,
    adminAgentsAgentsRotateKeyRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsAgentsRotateKeyRequest** | **AdminAgentsAgentsRotateKeyRequest**| For an api_key agent, the optional lifetime of the new key (ignored for a client secret). Without either field the current expiry date is kept, unless it has already passed (then the new key gets 180 days). | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsRotateCredentialsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Credentials rotated. The new secret is returned ONCE and cannot be retrieved again. |  -  |
|**400** | Credentials cannot be rotated for this agent (invalid identity type). |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsSetScopes**
> AdminAgentsSetScopesResponse adminAgentsSetScopes(adminAgentsSetScopesRequest)


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    AdminAgentsSetScopesRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let adminAgentsSetScopesRequest: AdminAgentsSetScopesRequest; //

const { status, data } = await apiInstance.adminAgentsSetScopes(
    orgId,
    agentId,
    adminAgentsSetScopesRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminAgentsSetScopesRequest** | **AdminAgentsSetScopesRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsSetScopesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent scopes updated. |  -  |
|**400** | scopes array is required. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminAgentsUpdate**
> PutAdminAgentsUpdateResponse patchAdminAgentsUpdate(putAdminAgentsUpdateRequest)


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    PutAdminAgentsUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let putAdminAgentsUpdateRequest: PutAdminAgentsUpdateRequest; //

const { status, data } = await apiInstance.patchAdminAgentsUpdate(
    orgId,
    agentId,
    putAdminAgentsUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminAgentsUpdateRequest** | **PutAdminAgentsUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminAgentsUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent updated. |  -  |
|**400** | Invalid budgetPolicy: an unknown key, or a value that is not a number greater than zero. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminAgentsUpdate**
> PutAdminAgentsUpdateResponse putAdminAgentsUpdate(putAdminAgentsUpdateRequest)


### Example

```typescript
import {
    AdminAgentsApi,
    Configuration,
    PutAdminAgentsUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAgentsApi(configuration);

let orgId: string; // (default to undefined)
let agentId: string; // (default to undefined)
let putAdminAgentsUpdateRequest: PutAdminAgentsUpdateRequest; //

const { status, data } = await apiInstance.putAdminAgentsUpdate(
    orgId,
    agentId,
    putAdminAgentsUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminAgentsUpdateRequest** | **PutAdminAgentsUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **agentId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminAgentsUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Agent updated. |  -  |
|**400** | Invalid budgetPolicy: an unknown key, or a value that is not a number greater than zero. |  -  |
|**401** | Authentication required. |  -  |
|**403** | Admin privileges required. |  -  |
|**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

