# AdminSettingsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminAnalyticsDashboard**](AdminSettingsAPI.md#adminanalyticsdashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
[**adminAnalyticsLogins**](AdminSettingsAPI.md#adminanalyticslogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
[**adminAnalyticsUsers**](AdminSettingsAPI.md#adminanalyticsusers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
[**adminOrganizationGet**](AdminSettingsAPI.md#adminorganizationget) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
[**adminSettingsAll**](AdminSettingsAPI.md#adminsettingsall) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
[**adminSettingsAuthGet**](AdminSettingsAPI.md#adminsettingsauthget) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
[**adminSettingsAuthenticationGet**](AdminSettingsAPI.md#adminsettingsauthenticationget) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
[**adminSettingsBrandingGet**](AdminSettingsAPI.md#adminsettingsbrandingget) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
[**adminSettingsEmailGet**](AdminSettingsAPI.md#adminsettingsemailget) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
[**adminSettingsGeneralGet**](AdminSettingsAPI.md#adminsettingsgeneralget) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
[**adminSettingsScimGet**](AdminSettingsAPI.md#adminsettingsscimget) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
[**adminSettingsSecurityGet**](AdminSettingsAPI.md#adminsettingssecurityget) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
[**adminTenantGet**](AdminSettingsAPI.md#admintenantget) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
[**patchAdminOrganizationUpdate**](AdminSettingsAPI.md#patchadminorganizationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**patchAdminSettingsAuthUpdate**](AdminSettingsAPI.md#patchadminsettingsauthupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**patchAdminSettingsAuthenticationUpdate**](AdminSettingsAPI.md#patchadminsettingsauthenticationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**patchAdminSettingsBrandingUpdate**](AdminSettingsAPI.md#patchadminsettingsbrandingupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**patchAdminSettingsEmailUpdate**](AdminSettingsAPI.md#patchadminsettingsemailupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**patchAdminSettingsGeneralUpdate**](AdminSettingsAPI.md#patchadminsettingsgeneralupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**patchAdminSettingsScimUpdate**](AdminSettingsAPI.md#patchadminsettingsscimupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**patchAdminSettingsSecurityUpdate**](AdminSettingsAPI.md#patchadminsettingssecurityupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**patchAdminTenantUpdate**](AdminSettingsAPI.md#patchadmintenantupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
[**putAdminOrganizationUpdate**](AdminSettingsAPI.md#putadminorganizationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**putAdminSettingsAuthUpdate**](AdminSettingsAPI.md#putadminsettingsauthupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**putAdminSettingsAuthenticationUpdate**](AdminSettingsAPI.md#putadminsettingsauthenticationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**putAdminSettingsBrandingUpdate**](AdminSettingsAPI.md#putadminsettingsbrandingupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**putAdminSettingsEmailUpdate**](AdminSettingsAPI.md#putadminsettingsemailupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**putAdminSettingsGeneralUpdate**](AdminSettingsAPI.md#putadminsettingsgeneralupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**putAdminSettingsScimUpdate**](AdminSettingsAPI.md#putadminsettingsscimupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**putAdminSettingsSecurityUpdate**](AdminSettingsAPI.md#putadminsettingssecurityupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**putAdminTenantUpdate**](AdminSettingsAPI.md#putadmintenantupdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings


# **adminAnalyticsDashboard**
```swift
    open class func adminAnalyticsDashboard(orgId: String, completion: @escaping (_ data: AdminAnalyticsDashboardResponse?, _ error: Error?) -> Void)
```

Get dashboard analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get dashboard analytics
AdminSettingsAPI.adminAnalyticsDashboard(orgId: orgId) { (response, error) in
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

[**AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAnalyticsLogins**
```swift
    open class func adminAnalyticsLogins(orgId: String, days: Int? = nil, completion: @escaping (_ data: AdminAnalyticsLoginsResponse?, _ error: Error?) -> Void)
```

Get login analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let days = 987 // Int | Window in days (1-90, default 30). (optional) (default to 30)

// Get login analytics
AdminSettingsAPI.adminAnalyticsLogins(orgId: orgId, days: days) { (response, error) in
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
 **days** | **Int** | Window in days (1-90, default 30). | [optional] [default to 30]

### Return type

[**AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAnalyticsUsers**
```swift
    open class func adminAnalyticsUsers(orgId: String, days: Int? = nil, completion: @escaping (_ data: AdminAnalyticsUsersResponse?, _ error: Error?) -> Void)
```

Get user growth analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let days = 987 // Int | Window in days (1-90, default 30). (optional) (default to 30)

// Get user growth analytics
AdminSettingsAPI.adminAnalyticsUsers(orgId: orgId, days: days) { (response, error) in
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
 **days** | **Int** | Window in days (1-90, default 30). | [optional] [default to 30]

### Return type

[**AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationGet**
```swift
    open class func adminOrganizationGet(orgId: String, completion: @escaping (_ data: AdminTenantGetResponse?, _ error: Error?) -> Void)
```

Get organization (tenant) profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get organization (tenant) profile
AdminSettingsAPI.adminOrganizationGet(orgId: orgId) { (response, error) in
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

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAll**
```swift
    open class func adminSettingsAll(orgId: String, completion: @escaping (_ data: AdminSettingsAllResponse?, _ error: Error?) -> Void)
```

Get all settings (combined)

Needs `settings.view`. The `branding` part is returned only to a caller who also holds `branding.view` (for an API key, its creator), as for GET /settings/branding and the portal's branding page; without it the key is left out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get all settings (combined)
AdminSettingsAPI.adminSettingsAll(orgId: orgId) { (response, error) in
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

[**AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAuthGet**
```swift
    open class func adminSettingsAuthGet(orgId: String, completion: @escaping (_ data: AdminSettingsAuthenticationGetResponse?, _ error: Error?) -> Void)
```

Get authentication settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get authentication settings
AdminSettingsAPI.adminSettingsAuthGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAuthenticationGet**
```swift
    open class func adminSettingsAuthenticationGet(orgId: String, completion: @escaping (_ data: AdminSettingsAuthenticationGetResponse?, _ error: Error?) -> Void)
```

Get authentication settings (alias for settings/auth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get authentication settings (alias for settings/auth)
AdminSettingsAPI.adminSettingsAuthenticationGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsBrandingGet**
```swift
    open class func adminSettingsBrandingGet(orgId: String, completion: @escaping (_ data: AdminSettingsBrandingGetResponse?, _ error: Error?) -> Void)
```

Get branding/login page settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get branding/login page settings
AdminSettingsAPI.adminSettingsBrandingGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsEmailGet**
```swift
    open class func adminSettingsEmailGet(orgId: String, completion: @escaping (_ data: AdminSettingsEmailGetResponse?, _ error: Error?) -> Void)
```

Get email settings

Shows who sends the organization's mail: its own mail provider (set up in the portal) with the From address, From name and Reply-To stored there, or LumoAuth with LumoAuth's sender.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get email settings
AdminSettingsAPI.adminSettingsEmailGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsGeneralGet**
```swift
    open class func adminSettingsGeneralGet(orgId: String, completion: @escaping (_ data: AdminSettingsGeneralGetResponse?, _ error: Error?) -> Void)
```

Get general settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get general settings
AdminSettingsAPI.adminSettingsGeneralGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsScimGet**
```swift
    open class func adminSettingsScimGet(orgId: String, completion: @escaping (_ data: AdminSettingsScimGetResponse?, _ error: Error?) -> Void)
```

Get SCIM settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get SCIM settings
AdminSettingsAPI.adminSettingsScimGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsSecurityGet**
```swift
    open class func adminSettingsSecurityGet(orgId: String, completion: @escaping (_ data: AdminSettingsSecurityGetResponse?, _ error: Error?) -> Void)
```

Get security settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get security settings
AdminSettingsAPI.adminSettingsSecurityGet(orgId: orgId) { (response, error) in
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

[**AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTenantGet**
```swift
    open class func adminTenantGet(orgId: String, completion: @escaping (_ data: AdminTenantGetResponse?, _ error: Error?) -> Void)
```

Get organization (tenant) profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get organization (tenant) profile
AdminSettingsAPI.adminTenantGet(orgId: orgId) { (response, error) in
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

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrganizationUpdate**
```swift
    open class func patchAdminOrganizationUpdate(orgId: String, completion: @escaping (_ data: PutAdminTenantUpdateResponse?, _ error: Error?) -> Void)
```

Update organization (tenant) name and settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update organization (tenant) name and settings
AdminSettingsAPI.patchAdminOrganizationUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsAuthUpdate**
```swift
    open class func patchAdminSettingsAuthUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsAuthenticationUpdateResponse?, _ error: Error?) -> Void)
```

Update authentication settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update authentication settings
AdminSettingsAPI.patchAdminSettingsAuthUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsAuthenticationUpdate**
```swift
    open class func patchAdminSettingsAuthenticationUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsAuthenticationUpdateResponse?, _ error: Error?) -> Void)
```

Update authentication settings (alias for settings/auth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update authentication settings (alias for settings/auth)
AdminSettingsAPI.patchAdminSettingsAuthenticationUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsBrandingUpdate**
```swift
    open class func patchAdminSettingsBrandingUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsBrandingUpdateResponse?, _ error: Error?) -> Void)
```

Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update branding/login page settings
AdminSettingsAPI.patchAdminSettingsBrandingUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsEmailUpdate**
```swift
    open class func patchAdminSettingsEmailUpdate(orgId: String, putAdminSettingsEmailUpdateRequest: PutAdminSettingsEmailUpdateRequest? = nil, completion: @escaping (_ data: PutAdminSettingsEmailUpdateResponse?, _ error: Error?) -> Void)
```

Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminSettingsEmailUpdateRequest = PutAdminSettingsEmailUpdateRequest(fromEmail: "fromEmail_example", fromName: "fromName_example", replyToEmail: "replyToEmail_example") // PutAdminSettingsEmailUpdateRequest |  (optional)

// Update email settings
AdminSettingsAPI.patchAdminSettingsEmailUpdate(orgId: orgId, putAdminSettingsEmailUpdateRequest: putAdminSettingsEmailUpdateRequest) { (response, error) in
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
 **putAdminSettingsEmailUpdateRequest** | [**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md) |  | [optional] 

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsGeneralUpdate**
```swift
    open class func patchAdminSettingsGeneralUpdate(orgId: String, putAdminSettingsGeneralUpdateRequest: PutAdminSettingsGeneralUpdateRequest? = nil, completion: @escaping (_ data: PutAdminSettingsGeneralUpdateResponse?, _ error: Error?) -> Void)
```

Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminSettingsGeneralUpdateRequest = PutAdminSettingsGeneralUpdateRequest(name: "name_example", locale: "locale_example") // PutAdminSettingsGeneralUpdateRequest |  (optional)

// Update general settings
AdminSettingsAPI.patchAdminSettingsGeneralUpdate(orgId: orgId, putAdminSettingsGeneralUpdateRequest: putAdminSettingsGeneralUpdateRequest) { (response, error) in
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
 **putAdminSettingsGeneralUpdateRequest** | [**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md) |  | [optional] 

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsScimUpdate**
```swift
    open class func patchAdminSettingsScimUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsScimUpdateResponse?, _ error: Error?) -> Void)
```

Update SCIM settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update SCIM settings
AdminSettingsAPI.patchAdminSettingsScimUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsSecurityUpdate**
```swift
    open class func patchAdminSettingsSecurityUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsSecurityUpdateResponse?, _ error: Error?) -> Void)
```

Update security settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update security settings
AdminSettingsAPI.patchAdminSettingsSecurityUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminTenantUpdate**
```swift
    open class func patchAdminTenantUpdate(orgId: String, completion: @escaping (_ data: PutAdminTenantUpdateResponse?, _ error: Error?) -> Void)
```

Update organization (tenant) name and settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update organization (tenant) name and settings
AdminSettingsAPI.patchAdminTenantUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrganizationUpdate**
```swift
    open class func putAdminOrganizationUpdate(orgId: String, completion: @escaping (_ data: PutAdminTenantUpdateResponse?, _ error: Error?) -> Void)
```

Update organization (tenant) name and settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update organization (tenant) name and settings
AdminSettingsAPI.putAdminOrganizationUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsAuthUpdate**
```swift
    open class func putAdminSettingsAuthUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsAuthenticationUpdateResponse?, _ error: Error?) -> Void)
```

Update authentication settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update authentication settings
AdminSettingsAPI.putAdminSettingsAuthUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsAuthenticationUpdate**
```swift
    open class func putAdminSettingsAuthenticationUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsAuthenticationUpdateResponse?, _ error: Error?) -> Void)
```

Update authentication settings (alias for settings/auth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update authentication settings (alias for settings/auth)
AdminSettingsAPI.putAdminSettingsAuthenticationUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsBrandingUpdate**
```swift
    open class func putAdminSettingsBrandingUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsBrandingUpdateResponse?, _ error: Error?) -> Void)
```

Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update branding/login page settings
AdminSettingsAPI.putAdminSettingsBrandingUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsEmailUpdate**
```swift
    open class func putAdminSettingsEmailUpdate(orgId: String, putAdminSettingsEmailUpdateRequest: PutAdminSettingsEmailUpdateRequest? = nil, completion: @escaping (_ data: PutAdminSettingsEmailUpdateResponse?, _ error: Error?) -> Void)
```

Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminSettingsEmailUpdateRequest = PutAdminSettingsEmailUpdateRequest(fromEmail: "fromEmail_example", fromName: "fromName_example", replyToEmail: "replyToEmail_example") // PutAdminSettingsEmailUpdateRequest |  (optional)

// Update email settings
AdminSettingsAPI.putAdminSettingsEmailUpdate(orgId: orgId, putAdminSettingsEmailUpdateRequest: putAdminSettingsEmailUpdateRequest) { (response, error) in
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
 **putAdminSettingsEmailUpdateRequest** | [**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md) |  | [optional] 

### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsGeneralUpdate**
```swift
    open class func putAdminSettingsGeneralUpdate(orgId: String, putAdminSettingsGeneralUpdateRequest: PutAdminSettingsGeneralUpdateRequest? = nil, completion: @escaping (_ data: PutAdminSettingsGeneralUpdateResponse?, _ error: Error?) -> Void)
```

Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let putAdminSettingsGeneralUpdateRequest = PutAdminSettingsGeneralUpdateRequest(name: "name_example", locale: "locale_example") // PutAdminSettingsGeneralUpdateRequest |  (optional)

// Update general settings
AdminSettingsAPI.putAdminSettingsGeneralUpdate(orgId: orgId, putAdminSettingsGeneralUpdateRequest: putAdminSettingsGeneralUpdateRequest) { (response, error) in
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
 **putAdminSettingsGeneralUpdateRequest** | [**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md) |  | [optional] 

### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsScimUpdate**
```swift
    open class func putAdminSettingsScimUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsScimUpdateResponse?, _ error: Error?) -> Void)
```

Update SCIM settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update SCIM settings
AdminSettingsAPI.putAdminSettingsScimUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsSecurityUpdate**
```swift
    open class func putAdminSettingsSecurityUpdate(orgId: String, completion: @escaping (_ data: PutAdminSettingsSecurityUpdateResponse?, _ error: Error?) -> Void)
```

Update security settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update security settings
AdminSettingsAPI.putAdminSettingsSecurityUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminTenantUpdate**
```swift
    open class func putAdminTenantUpdate(orgId: String, completion: @escaping (_ data: PutAdminTenantUpdateResponse?, _ error: Error?) -> Void)
```

Update organization (tenant) name and settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Update organization (tenant) name and settings
AdminSettingsAPI.putAdminTenantUpdate(orgId: orgId) { (response, error) in
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

