# AdminAuditLogsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminAuditLogsActions**](AdminAuditLogsAPI.md#adminauditlogsactions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the tenant
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

List the distinct audit action types recorded for the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the distinct audit action types recorded for the tenant
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
    open class func adminAuditLogsExport(orgId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Export audit logs as CSV (default) or JSON

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Export audit logs as CSV (default) or JSON
AdminAuditLogsAPI.adminAuditLogsExport(orgId: orgId) { (response, error) in
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
    open class func adminAuditLogsList(orgId: String, completion: @escaping (_ data: AdminAuditLogsListResponse?, _ error: Error?) -> Void)
```

List audit log entries

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List audit log entries
AdminAuditLogsAPI.adminAuditLogsList(orgId: orgId) { (response, error) in
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
    open class func patchAdminAuditLogsRetentionUpdate(orgId: String, completion: @escaping (_ data: AdminAuditLogsRetentionResponse?, _ error: Error?) -> Void)
```

Update audit log retention settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update audit log retention settings
AdminAuditLogsAPI.patchAdminAuditLogsRetentionUpdate(orgId: orgId) { (response, error) in
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

# **putAdminAuditLogsRetentionUpdate**
```swift
    open class func putAdminAuditLogsRetentionUpdate(orgId: String, completion: @escaping (_ data: AdminAuditLogsRetentionResponse?, _ error: Error?) -> Void)
```

Update audit log retention settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update audit log retention settings
AdminAuditLogsAPI.putAdminAuditLogsRetentionUpdate(orgId: orgId) { (response, error) in
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

