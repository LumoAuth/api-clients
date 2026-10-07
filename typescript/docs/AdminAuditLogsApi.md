# AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminAuditLogsActions**](#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant|
|[**adminAuditLogsExport**](#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON|
|[**adminAuditLogsGet**](#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry|
|[**adminAuditLogsList**](#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries|
|[**adminAuditLogsRetention**](#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings|
|[**adminAuditLogsStats**](#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)|
|[**patchAdminAuditLogsRetentionUpdate**](#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings|
|[**putAdminAuditLogsRetentionUpdate**](#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings|

# **adminAuditLogsActions**
> AdminAuditLogsActionsResponse adminAuditLogsActions()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsActions(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsActionsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Action names |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsExport**
> string adminAuditLogsExport()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsExport(
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Download (Content-Disposition: attachment). JSON when ?format&#x3D;json, otherwise CSV; at most 10000 rows. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsGet**
> AdminAuditLogsGetResponse adminAuditLogsGet()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)
let logId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsGet(
    orgId,
    logId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **logId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Audit log entry (detailed) |  -  |
|**404** | Audit log not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsList**
> AdminAuditLogsListResponse adminAuditLogsList()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Audit log entries (summary fields only) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsRetention**
> AdminAuditLogsRetentionResponse adminAuditLogsRetention()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsRetention(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsRetentionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsStats**
> AdminAuditLogsStatsResponse adminAuditLogsStats()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsStats(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsStatsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Statistics |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminAuditLogsRetentionUpdate**
> AdminAuditLogsRetentionResponse patchAdminAuditLogsRetentionUpdate()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminAuditLogsRetentionUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsRetentionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminAuditLogsRetentionUpdate**
> AdminAuditLogsRetentionResponse putAdminAuditLogsRetentionUpdate()


### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminAuditLogsRetentionUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsRetentionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

