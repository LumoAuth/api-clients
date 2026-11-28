# AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminAuditLogsActions**](#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization|
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

Needs `audit.export` and `audit.view`, as the export on the portal\'s audit log page does.

### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)
let format: 'csv' | 'json'; //csv (default) or json. (optional) (default to 'csv')
let eventType: string; //Exact event type, for example user.login. (optional) (default to undefined)
let action: string; //The short verb of the event (as GET /audit-logs/actions lists them). (optional) (default to undefined)
let actorId: string; //Who acted: a user, API key or agent id. Also accepted as userId. (optional) (default to undefined)
let targetType: string; //Kind of the subject of the event. Also accepted as resourceType. (optional) (default to undefined)
let targetId: string; //The subject of the event, for example the user of a login.failed entry. (optional) (default to undefined)
let severity: 'debug' | 'info' | 'notice' | 'warning' | 'error' | 'critical'; // (optional) (default to undefined)
let status: 'success' | 'failure' | 'pending' | 'partial'; //Result of the event. (optional) (default to undefined)
let ipAddress: string; // (optional) (default to undefined)
let search: string; //Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional) (default to undefined)
let traceId: string; //Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional) (default to undefined)
let from: string; //Entries at or after this time (ISO 8601). Also accepted as startDate. (optional) (default to undefined)
let to: string; //Entries at or before this time (ISO 8601). Also accepted as endDate. (optional) (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsExport(
    orgId,
    format,
    eventType,
    action,
    actorId,
    targetType,
    targetId,
    severity,
    status,
    ipAddress,
    search,
    traceId,
    from,
    to
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **format** | [**&#39;csv&#39; | &#39;json&#39;**]**Array<&#39;csv&#39; &#124; &#39;json&#39;>** | csv (default) or json. | (optional) defaults to 'csv'|
| **eventType** | [**string**] | Exact event type, for example user.login. | (optional) defaults to undefined|
| **action** | [**string**] | The short verb of the event (as GET /audit-logs/actions lists them). | (optional) defaults to undefined|
| **actorId** | [**string**] | Who acted: a user, API key or agent id. Also accepted as userId. | (optional) defaults to undefined|
| **targetType** | [**string**] | Kind of the subject of the event. Also accepted as resourceType. | (optional) defaults to undefined|
| **targetId** | [**string**] | The subject of the event, for example the user of a login.failed entry. | (optional) defaults to undefined|
| **severity** | [**&#39;debug&#39; | &#39;info&#39; | &#39;notice&#39; | &#39;warning&#39; | &#39;error&#39; | &#39;critical&#39;**]**Array<&#39;debug&#39; &#124; &#39;info&#39; &#124; &#39;notice&#39; &#124; &#39;warning&#39; &#124; &#39;error&#39; &#124; &#39;critical&#39;>** |  | (optional) defaults to undefined|
| **status** | [**&#39;success&#39; | &#39;failure&#39; | &#39;pending&#39; | &#39;partial&#39;**]**Array<&#39;success&#39; &#124; &#39;failure&#39; &#124; &#39;pending&#39; &#124; &#39;partial&#39;>** | Result of the event. | (optional) defaults to undefined|
| **ipAddress** | [**string**] |  | (optional) defaults to undefined|
| **search** | [**string**] | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | (optional) defaults to undefined|
| **traceId** | [**string**] | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | (optional) defaults to undefined|
| **from** | [**string**] | Entries at or after this time (ISO 8601). Also accepted as startDate. | (optional) defaults to undefined|
| **to** | [**string**] | Entries at or before this time (ISO 8601). Also accepted as endDate. | (optional) defaults to undefined|


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
let page: number; // (optional) (default to 1)
let limit: number; // (optional) (default to 25)
let eventType: string; //Exact event type, for example user.login. (optional) (default to undefined)
let action: string; //The short verb of the event (as GET /audit-logs/actions lists them). (optional) (default to undefined)
let actorId: string; //Who acted: a user, API key or agent id. Also accepted as userId. (optional) (default to undefined)
let targetType: string; //Kind of the subject of the event. Also accepted as resourceType. (optional) (default to undefined)
let targetId: string; //The subject of the event, for example the user of a login.failed entry. (optional) (default to undefined)
let severity: 'debug' | 'info' | 'notice' | 'warning' | 'error' | 'critical'; // (optional) (default to undefined)
let status: 'success' | 'failure' | 'pending' | 'partial'; //Result of the event. (optional) (default to undefined)
let ipAddress: string; // (optional) (default to undefined)
let search: string; //Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional) (default to undefined)
let traceId: string; //Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional) (default to undefined)
let from: string; //Entries at or after this time (ISO 8601). Also accepted as startDate. (optional) (default to undefined)
let to: string; //Entries at or before this time (ISO 8601). Also accepted as endDate. (optional) (default to undefined)

const { status, data } = await apiInstance.adminAuditLogsList(
    orgId,
    page,
    limit,
    eventType,
    action,
    actorId,
    targetType,
    targetId,
    severity,
    status,
    ipAddress,
    search,
    traceId,
    from,
    to
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **page** | [**number**] |  | (optional) defaults to 1|
| **limit** | [**number**] |  | (optional) defaults to 25|
| **eventType** | [**string**] | Exact event type, for example user.login. | (optional) defaults to undefined|
| **action** | [**string**] | The short verb of the event (as GET /audit-logs/actions lists them). | (optional) defaults to undefined|
| **actorId** | [**string**] | Who acted: a user, API key or agent id. Also accepted as userId. | (optional) defaults to undefined|
| **targetType** | [**string**] | Kind of the subject of the event. Also accepted as resourceType. | (optional) defaults to undefined|
| **targetId** | [**string**] | The subject of the event, for example the user of a login.failed entry. | (optional) defaults to undefined|
| **severity** | [**&#39;debug&#39; | &#39;info&#39; | &#39;notice&#39; | &#39;warning&#39; | &#39;error&#39; | &#39;critical&#39;**]**Array<&#39;debug&#39; &#124; &#39;info&#39; &#124; &#39;notice&#39; &#124; &#39;warning&#39; &#124; &#39;error&#39; &#124; &#39;critical&#39;>** |  | (optional) defaults to undefined|
| **status** | [**&#39;success&#39; | &#39;failure&#39; | &#39;pending&#39; | &#39;partial&#39;**]**Array<&#39;success&#39; &#124; &#39;failure&#39; &#124; &#39;pending&#39; &#124; &#39;partial&#39;>** | Result of the event. | (optional) defaults to undefined|
| **ipAddress** | [**string**] |  | (optional) defaults to undefined|
| **search** | [**string**] | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | (optional) defaults to undefined|
| **traceId** | [**string**] | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | (optional) defaults to undefined|
| **from** | [**string**] | Entries at or after this time (ISO 8601). Also accepted as startDate. | (optional) defaults to undefined|
| **to** | [**string**] | Entries at or before this time (ISO 8601). Also accepted as endDate. | (optional) defaults to undefined|


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
> AdminAuditLogsRetentionResponse patchAdminAuditLogsRetentionUpdate(putAdminAuditLogsRetentionUpdateRequest)

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration,
    PutAdminAuditLogsRetentionUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminAuditLogsRetentionUpdateRequest: PutAdminAuditLogsRetentionUpdateRequest; //

const { status, data } = await apiInstance.patchAdminAuditLogsRetentionUpdate(
    orgId,
    putAdminAuditLogsRetentionUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminAuditLogsRetentionUpdateRequest** | **PutAdminAuditLogsRetentionUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsRetentionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminAuditLogsRetentionUpdate**
> AdminAuditLogsRetentionResponse putAdminAuditLogsRetentionUpdate(putAdminAuditLogsRetentionUpdateRequest)

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

```typescript
import {
    AdminAuditLogsApi,
    Configuration,
    PutAdminAuditLogsRetentionUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAuditLogsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminAuditLogsRetentionUpdateRequest: PutAdminAuditLogsRetentionUpdateRequest; //

const { status, data } = await apiInstance.putAdminAuditLogsRetentionUpdate(
    orgId,
    putAdminAuditLogsRetentionUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminAuditLogsRetentionUpdateRequest** | **PutAdminAuditLogsRetentionUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAuditLogsRetentionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

