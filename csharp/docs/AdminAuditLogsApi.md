# LumoAuth.ApiClient.Api.AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AdminAuditLogsActions**](AdminAuditLogsApi.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization |
| [**AdminAuditLogsExport**](AdminAuditLogsApi.md#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON |
| [**AdminAuditLogsGet**](AdminAuditLogsApi.md#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry |
| [**AdminAuditLogsList**](AdminAuditLogsApi.md#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries |
| [**AdminAuditLogsRetention**](AdminAuditLogsApi.md#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings |
| [**AdminAuditLogsStats**](AdminAuditLogsApi.md#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days) |
| [**PatchAdminAuditLogsRetentionUpdate**](AdminAuditLogsApi.md#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |
| [**PutAdminAuditLogsRetentionUpdate**](AdminAuditLogsApi.md#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |

<a id="adminauditlogsactions"></a>
# **AdminAuditLogsActions**
> AdminAuditLogsActionsResponse AdminAuditLogsActions (string orgId)

List the distinct audit action types recorded for the organization

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsActionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // List the distinct audit action types recorded for the organization
                AdminAuditLogsActionsResponse result = apiInstance.AdminAuditLogsActions(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsActions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsActionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List the distinct audit action types recorded for the organization
    ApiResponse<AdminAuditLogsActionsResponse> response = apiInstance.AdminAuditLogsActionsWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsActionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Action names |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminauditlogsexport"></a>
# **AdminAuditLogsExport**
> string AdminAuditLogsExport (string orgId, string? format = null, string? eventType = null, string? action = null, string? actorId = null, string? targetType = null, string? targetId = null, string? severity = null, string? status = null, string? ipAddress = null, string? search = null, string? traceId = null, DateTime? from = null, DateTime? to = null)

Export audit logs as CSV (default) or JSON

Needs `audit.export` and `audit.view`, as the export on the portal's audit log page does.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsExportExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var format = "csv";  // string? | csv (default) or json. (optional)  (default to csv)
            var eventType = "eventType_example";  // string? | Exact event type, for example user.login. (optional) 
            var action = "action_example";  // string? | The short verb of the event (as GET /audit-logs/actions lists them). (optional) 
            var actorId = "actorId_example";  // string? | Who acted: a user, API key or agent id. Also accepted as userId. (optional) 
            var targetType = "targetType_example";  // string? | Kind of the subject of the event. Also accepted as resourceType. (optional) 
            var targetId = "targetId_example";  // string? | The subject of the event, for example the user of a login.failed entry. (optional) 
            var severity = "debug";  // string? |  (optional) 
            var status = "success";  // string? | Result of the event. (optional) 
            var ipAddress = "ipAddress_example";  // string? |  (optional) 
            var search = "search_example";  // string? | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional) 
            var traceId = "traceId_example";  // string? | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional) 
            var from = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional) 
            var to = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional) 

            try
            {
                // Export audit logs as CSV (default) or JSON
                string result = apiInstance.AdminAuditLogsExport(orgId, format, eventType, action, actorId, targetType, targetId, severity, status, ipAddress, search, traceId, from, to);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsExport: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsExportWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Export audit logs as CSV (default) or JSON
    ApiResponse<string> response = apiInstance.AdminAuditLogsExportWithHttpInfo(orgId, format, eventType, action, actorId, targetType, targetId, severity, status, ipAddress, search, traceId, from, to);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsExportWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **format** | **string?** | csv (default) or json. | [optional] [default to csv] |
| **eventType** | **string?** | Exact event type, for example user.login. | [optional]  |
| **action** | **string?** | The short verb of the event (as GET /audit-logs/actions lists them). | [optional]  |
| **actorId** | **string?** | Who acted: a user, API key or agent id. Also accepted as userId. | [optional]  |
| **targetType** | **string?** | Kind of the subject of the event. Also accepted as resourceType. | [optional]  |
| **targetId** | **string?** | The subject of the event, for example the user of a login.failed entry. | [optional]  |
| **severity** | **string?** |  | [optional]  |
| **status** | **string?** | Result of the event. | [optional]  |
| **ipAddress** | **string?** |  | [optional]  |
| **search** | **string?** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional]  |
| **traceId** | **string?** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional]  |
| **from** | **DateTime?** | Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional]  |
| **to** | **DateTime?** | Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional]  |

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
| **200** | Download (Content-Disposition: attachment). JSON when ?format&#x3D;json, otherwise CSV; at most 10000 rows. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminauditlogsget"></a>
# **AdminAuditLogsGet**
> AdminAuditLogsGetResponse AdminAuditLogsGet (string orgId, string logId)

Get an audit log entry

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var logId = "logId_example";  // string | 

            try
            {
                // Get an audit log entry
                AdminAuditLogsGetResponse result = apiInstance.AdminAuditLogsGet(orgId, logId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get an audit log entry
    ApiResponse<AdminAuditLogsGetResponse> response = apiInstance.AdminAuditLogsGetWithHttpInfo(orgId, logId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **logId** | **string** |  |  |

### Return type

[**AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Audit log entry (detailed) |  -  |
| **404** | Audit log not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminauditlogslist"></a>
# **AdminAuditLogsList**
> AdminAuditLogsListResponse AdminAuditLogsList (string orgId, int? page = null, int? limit = null, string? eventType = null, string? action = null, string? actorId = null, string? targetType = null, string? targetId = null, string? severity = null, string? status = null, string? ipAddress = null, string? search = null, string? traceId = null, DateTime? from = null, DateTime? to = null)

List audit log entries

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var page = 1;  // int? |  (optional)  (default to 1)
            var limit = 25;  // int? |  (optional)  (default to 25)
            var eventType = "eventType_example";  // string? | Exact event type, for example user.login. (optional) 
            var action = "action_example";  // string? | The short verb of the event (as GET /audit-logs/actions lists them). (optional) 
            var actorId = "actorId_example";  // string? | Who acted: a user, API key or agent id. Also accepted as userId. (optional) 
            var targetType = "targetType_example";  // string? | Kind of the subject of the event. Also accepted as resourceType. (optional) 
            var targetId = "targetId_example";  // string? | The subject of the event, for example the user of a login.failed entry. (optional) 
            var severity = "debug";  // string? |  (optional) 
            var status = "success";  // string? | Result of the event. (optional) 
            var ipAddress = "ipAddress_example";  // string? |  (optional) 
            var search = "search_example";  // string? | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional) 
            var traceId = "traceId_example";  // string? | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional) 
            var from = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional) 
            var to = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional) 

            try
            {
                // List audit log entries
                AdminAuditLogsListResponse result = apiInstance.AdminAuditLogsList(orgId, page, limit, eventType, action, actorId, targetType, targetId, severity, status, ipAddress, search, traceId, from, to);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsList: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List audit log entries
    ApiResponse<AdminAuditLogsListResponse> response = apiInstance.AdminAuditLogsListWithHttpInfo(orgId, page, limit, eventType, action, actorId, targetType, targetId, severity, status, ipAddress, search, traceId, from, to);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **page** | **int?** |  | [optional] [default to 1] |
| **limit** | **int?** |  | [optional] [default to 25] |
| **eventType** | **string?** | Exact event type, for example user.login. | [optional]  |
| **action** | **string?** | The short verb of the event (as GET /audit-logs/actions lists them). | [optional]  |
| **actorId** | **string?** | Who acted: a user, API key or agent id. Also accepted as userId. | [optional]  |
| **targetType** | **string?** | Kind of the subject of the event. Also accepted as resourceType. | [optional]  |
| **targetId** | **string?** | The subject of the event, for example the user of a login.failed entry. | [optional]  |
| **severity** | **string?** |  | [optional]  |
| **status** | **string?** | Result of the event. | [optional]  |
| **ipAddress** | **string?** |  | [optional]  |
| **search** | **string?** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional]  |
| **traceId** | **string?** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional]  |
| **from** | **DateTime?** | Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional]  |
| **to** | **DateTime?** | Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional]  |

### Return type

[**AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Audit log entries (summary fields only) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminauditlogsretention"></a>
# **AdminAuditLogsRetention**
> AdminAuditLogsRetentionResponse AdminAuditLogsRetention (string orgId)

Get audit log retention settings

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsRetentionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Get audit log retention settings
                AdminAuditLogsRetentionResponse result = apiInstance.AdminAuditLogsRetention(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsRetention: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsRetentionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get audit log retention settings
    ApiResponse<AdminAuditLogsRetentionResponse> response = apiInstance.AdminAuditLogsRetentionWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsRetentionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminauditlogsstats"></a>
# **AdminAuditLogsStats**
> AdminAuditLogsStatsResponse AdminAuditLogsStats (string orgId)

Audit log statistics for a period (default: last 30 days)

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminAuditLogsStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Audit log statistics for a period (default: last 30 days)
                AdminAuditLogsStatsResponse result = apiInstance.AdminAuditLogsStats(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminAuditLogsStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Audit log statistics for a period (default: last 30 days)
    ApiResponse<AdminAuditLogsStatsResponse> response = apiInstance.AdminAuditLogsStatsWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.AdminAuditLogsStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Statistics |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="patchadminauditlogsretentionupdate"></a>
# **PatchAdminAuditLogsRetentionUpdate**
> AdminAuditLogsRetentionResponse PatchAdminAuditLogsRetentionUpdate (string orgId, PutAdminAuditLogsRetentionUpdateRequest putAdminAuditLogsRetentionUpdateRequest)

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class PatchAdminAuditLogsRetentionUpdateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var putAdminAuditLogsRetentionUpdateRequest = new PutAdminAuditLogsRetentionUpdateRequest(); // PutAdminAuditLogsRetentionUpdateRequest | 

            try
            {
                // Update audit log retention settings
                AdminAuditLogsRetentionResponse result = apiInstance.PatchAdminAuditLogsRetentionUpdate(orgId, putAdminAuditLogsRetentionUpdateRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.PatchAdminAuditLogsRetentionUpdate: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PatchAdminAuditLogsRetentionUpdateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update audit log retention settings
    ApiResponse<AdminAuditLogsRetentionResponse> response = apiInstance.PatchAdminAuditLogsRetentionUpdateWithHttpInfo(orgId, putAdminAuditLogsRetentionUpdateRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.PatchAdminAuditLogsRetentionUpdateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="putadminauditlogsretentionupdate"></a>
# **PutAdminAuditLogsRetentionUpdate**
> AdminAuditLogsRetentionResponse PutAdminAuditLogsRetentionUpdate (string orgId, PutAdminAuditLogsRetentionUpdateRequest putAdminAuditLogsRetentionUpdateRequest)

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class PutAdminAuditLogsRetentionUpdateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminAuditLogsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var putAdminAuditLogsRetentionUpdateRequest = new PutAdminAuditLogsRetentionUpdateRequest(); // PutAdminAuditLogsRetentionUpdateRequest | 

            try
            {
                // Update audit log retention settings
                AdminAuditLogsRetentionResponse result = apiInstance.PutAdminAuditLogsRetentionUpdate(orgId, putAdminAuditLogsRetentionUpdateRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminAuditLogsApi.PutAdminAuditLogsRetentionUpdate: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PutAdminAuditLogsRetentionUpdateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update audit log retention settings
    ApiResponse<AdminAuditLogsRetentionResponse> response = apiInstance.PutAdminAuditLogsRetentionUpdateWithHttpInfo(orgId, putAdminAuditLogsRetentionUpdateRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminAuditLogsApi.PutAdminAuditLogsRetentionUpdateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  |  |

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated retention settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

