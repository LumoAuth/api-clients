# AdminAuditLogsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminAuditLogsActions**](AdminAuditLogsAPI.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization
[**adminAuditLogsExport**](AdminAuditLogsAPI.md#adminauditlogsexport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
[**adminAuditLogsGet**](AdminAuditLogsAPI.md#adminauditlogsget) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
[**adminAuditLogsList**](AdminAuditLogsAPI.md#adminauditlogslist) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
[**adminAuditLogsRetention**](AdminAuditLogsAPI.md#adminauditlogsretention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
[**adminAuditLogsStats**](AdminAuditLogsAPI.md#adminauditlogsstats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
[**patchAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#patchadminauditlogsretentionupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
[**putAdminAuditLogsRetentionUpdate**](AdminAuditLogsAPI.md#putadminauditlogsretentionupdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings


# **adminAuditLogsActions**
```swift
    open class func adminAuditLogsActions(orgId: String, completion: @escaping (_ data: AdminAuditLogsActionsResponse?, _ error: Error?) -> Void)
```

List the distinct audit action types recorded for the organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the distinct audit action types recorded for the organization
AdminAuditLogsAPI.adminAuditLogsActions(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsExport**
```swift
    open class func adminAuditLogsExport(orgId: String, format: Format_adminAuditLogsExport? = nil, eventType: String? = nil, action: String? = nil, actorId: String? = nil, targetType: String? = nil, targetId: String? = nil, severity: Severity_adminAuditLogsExport? = nil, status: Status_adminAuditLogsExport? = nil, ipAddress: String? = nil, search: String? = nil, traceId: String? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Export audit logs as CSV (default) or JSON

Needs `audit.export` and `audit.view`, as the export on the portal's audit log page does.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let format = "format_example" // String | csv (default) or json. (optional) (default to .csv)
let eventType = "eventType_example" // String | Exact event type, for example user.login. (optional)
let action = "action_example" // String | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
let actorId = "actorId_example" // String | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
let targetType = "targetType_example" // String | Kind of the subject of the event. Also accepted as resourceType. (optional)
let targetId = "targetId_example" // String | The subject of the event, for example the user of a login.failed entry. (optional)
let severity = "severity_example" // String |  (optional)
let status = "status_example" // String | Result of the event. (optional)
let ipAddress = "ipAddress_example" // String |  (optional)
let search = "search_example" // String | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
let traceId = "traceId_example" // String | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
let from = Date() // Date | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
let to = Date() // Date | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

// Export audit logs as CSV (default) or JSON
AdminAuditLogsAPI.adminAuditLogsExport(orgId: orgId, format: format, eventType: eventType, action: action, actorId: actorId, targetType: targetType, targetId: targetId, severity: severity, status: status, ipAddress: ipAddress, search: search, traceId: traceId, from: from, to: to) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **format** | **String** | csv (default) or json. | [optional] [default to .csv]
 **eventType** | **String** | Exact event type, for example user.login. | [optional] 
 **action** | **String** | The short verb of the event (as GET /audit-logs/actions lists them). | [optional] 
 **actorId** | **String** | Who acted: a user, API key or agent id. Also accepted as userId. | [optional] 
 **targetType** | **String** | Kind of the subject of the event. Also accepted as resourceType. | [optional] 
 **targetId** | **String** | The subject of the event, for example the user of a login.failed entry. | [optional] 
 **severity** | **String** |  | [optional] 
 **status** | **String** | Result of the event. | [optional] 
 **ipAddress** | **String** |  | [optional] 
 **search** | **String** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] 
 **traceId** | **String** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] 
 **from** | **Date** | Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] 
 **to** | **Date** | Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsGet**
```swift
    open class func adminAuditLogsGet(orgId: String, logId: String, completion: @escaping (_ data: AdminAuditLogsGetResponse?, _ error: Error?) -> Void)
```

Get an audit log entry

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let logId = "logId_example" // String | 

// Get an audit log entry
AdminAuditLogsAPI.adminAuditLogsGet(orgId: orgId, logId: logId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **logId** | **String** |  | 

### Return type

[**AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsList**
```swift
    open class func adminAuditLogsList(orgId: String, page: Int? = nil, limit: Int? = nil, eventType: String? = nil, action: String? = nil, actorId: String? = nil, targetType: String? = nil, targetId: String? = nil, severity: Severity_adminAuditLogsList? = nil, status: Status_adminAuditLogsList? = nil, ipAddress: String? = nil, search: String? = nil, traceId: String? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: AdminAuditLogsListResponse?, _ error: Error?) -> Void)
```

List audit log entries

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let eventType = "eventType_example" // String | Exact event type, for example user.login. (optional)
let action = "action_example" // String | The short verb of the event (as GET /audit-logs/actions lists them). (optional)
let actorId = "actorId_example" // String | Who acted: a user, API key or agent id. Also accepted as userId. (optional)
let targetType = "targetType_example" // String | Kind of the subject of the event. Also accepted as resourceType. (optional)
let targetId = "targetId_example" // String | The subject of the event, for example the user of a login.failed entry. (optional)
let severity = "severity_example" // String |  (optional)
let status = "status_example" // String | Result of the event. (optional)
let ipAddress = "ipAddress_example" // String |  (optional)
let search = "search_example" // String | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. (optional)
let traceId = "traceId_example" // String | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). (optional)
let from = Date() // Date | Entries at or after this time (ISO 8601). Also accepted as startDate. (optional)
let to = Date() // Date | Entries at or before this time (ISO 8601). Also accepted as endDate. (optional)

// List audit log entries
AdminAuditLogsAPI.adminAuditLogsList(orgId: orgId, page: page, limit: limit, eventType: eventType, action: action, actorId: actorId, targetType: targetType, targetId: targetId, severity: severity, status: status, ipAddress: ipAddress, search: search, traceId: traceId, from: from, to: to) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]
 **eventType** | **String** | Exact event type, for example user.login. | [optional] 
 **action** | **String** | The short verb of the event (as GET /audit-logs/actions lists them). | [optional] 
 **actorId** | **String** | Who acted: a user, API key or agent id. Also accepted as userId. | [optional] 
 **targetType** | **String** | Kind of the subject of the event. Also accepted as resourceType. | [optional] 
 **targetId** | **String** | The subject of the event, for example the user of a login.failed entry. | [optional] 
 **severity** | **String** |  | [optional] 
 **status** | **String** | Result of the event. | [optional] 
 **ipAddress** | **String** |  | [optional] 
 **search** | **String** | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] 
 **traceId** | **String** | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] 
 **from** | **Date** | Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] 
 **to** | **Date** | Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] 

### Return type

[**AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsRetention**
```swift
    open class func adminAuditLogsRetention(orgId: String, completion: @escaping (_ data: AdminAuditLogsRetentionResponse?, _ error: Error?) -> Void)
```

Get audit log retention settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get audit log retention settings
AdminAuditLogsAPI.adminAuditLogsRetention(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAuditLogsStats**
```swift
    open class func adminAuditLogsStats(orgId: String, completion: @escaping (_ data: AdminAuditLogsStatsResponse?, _ error: Error?) -> Void)
```

Audit log statistics for a period (default: last 30 days)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Audit log statistics for a period (default: last 30 days)
AdminAuditLogsAPI.adminAuditLogsStats(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminAuditLogsRetentionUpdate**
```swift
    open class func patchAdminAuditLogsRetentionUpdate(orgId: String, putAdminAuditLogsRetentionUpdateRequest: PutAdminAuditLogsRetentionUpdateRequest, completion: @escaping (_ data: AdminAuditLogsRetentionResponse?, _ error: Error?) -> Void)
```

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminAuditLogsRetentionUpdateRequest = PutAdminAuditLogsRetentionUpdateRequest(retentionDays: 123) // PutAdminAuditLogsRetentionUpdateRequest | 

// Update audit log retention settings
AdminAuditLogsAPI.patchAdminAuditLogsRetentionUpdate(orgId: orgId, putAdminAuditLogsRetentionUpdateRequest: putAdminAuditLogsRetentionUpdateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminAuditLogsRetentionUpdate**
```swift
    open class func putAdminAuditLogsRetentionUpdate(orgId: String, putAdminAuditLogsRetentionUpdateRequest: PutAdminAuditLogsRetentionUpdateRequest, completion: @escaping (_ data: AdminAuditLogsRetentionResponse?, _ error: Error?) -> Void)
```

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminAuditLogsRetentionUpdateRequest = PutAdminAuditLogsRetentionUpdateRequest(retentionDays: 123) // PutAdminAuditLogsRetentionUpdateRequest | 

// Update audit log retention settings
AdminAuditLogsAPI.putAdminAuditLogsRetentionUpdate(orgId: orgId, putAdminAuditLogsRetentionUpdateRequest: putAdminAuditLogsRetentionUpdateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **putAdminAuditLogsRetentionUpdateRequest** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | 

### Return type

[**AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

