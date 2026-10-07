# \AdminSettingsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminAnalyticsDashboard**](AdminSettingsAPI.md#AdminAnalyticsDashboard) | **Get** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
[**AdminAnalyticsLogins**](AdminSettingsAPI.md#AdminAnalyticsLogins) | **Get** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
[**AdminAnalyticsUsers**](AdminSettingsAPI.md#AdminAnalyticsUsers) | **Get** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
[**AdminOrganizationGet**](AdminSettingsAPI.md#AdminOrganizationGet) | **Get** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
[**AdminSettingsAll**](AdminSettingsAPI.md#AdminSettingsAll) | **Get** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
[**AdminSettingsAuthGet**](AdminSettingsAPI.md#AdminSettingsAuthGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
[**AdminSettingsAuthenticationGet**](AdminSettingsAPI.md#AdminSettingsAuthenticationGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
[**AdminSettingsBrandingGet**](AdminSettingsAPI.md#AdminSettingsBrandingGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
[**AdminSettingsEmailGet**](AdminSettingsAPI.md#AdminSettingsEmailGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
[**AdminSettingsGeneralGet**](AdminSettingsAPI.md#AdminSettingsGeneralGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
[**AdminSettingsScimGet**](AdminSettingsAPI.md#AdminSettingsScimGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
[**AdminSettingsSecurityGet**](AdminSettingsAPI.md#AdminSettingsSecurityGet) | **Get** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
[**AdminTenantGet**](AdminSettingsAPI.md#AdminTenantGet) | **Get** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
[**PatchAdminOrganizationUpdate**](AdminSettingsAPI.md#PatchAdminOrganizationUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**PatchAdminSettingsAuthUpdate**](AdminSettingsAPI.md#PatchAdminSettingsAuthUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**PatchAdminSettingsAuthenticationUpdate**](AdminSettingsAPI.md#PatchAdminSettingsAuthenticationUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**PatchAdminSettingsBrandingUpdate**](AdminSettingsAPI.md#PatchAdminSettingsBrandingUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**PatchAdminSettingsEmailUpdate**](AdminSettingsAPI.md#PatchAdminSettingsEmailUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**PatchAdminSettingsGeneralUpdate**](AdminSettingsAPI.md#PatchAdminSettingsGeneralUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**PatchAdminSettingsScimUpdate**](AdminSettingsAPI.md#PatchAdminSettingsScimUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**PatchAdminSettingsSecurityUpdate**](AdminSettingsAPI.md#PatchAdminSettingsSecurityUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**PatchAdminTenantUpdate**](AdminSettingsAPI.md#PatchAdminTenantUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
[**PutAdminOrganizationUpdate**](AdminSettingsAPI.md#PutAdminOrganizationUpdate) | **Put** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**PutAdminSettingsAuthUpdate**](AdminSettingsAPI.md#PutAdminSettingsAuthUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**PutAdminSettingsAuthenticationUpdate**](AdminSettingsAPI.md#PutAdminSettingsAuthenticationUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**PutAdminSettingsBrandingUpdate**](AdminSettingsAPI.md#PutAdminSettingsBrandingUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**PutAdminSettingsEmailUpdate**](AdminSettingsAPI.md#PutAdminSettingsEmailUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**PutAdminSettingsGeneralUpdate**](AdminSettingsAPI.md#PutAdminSettingsGeneralUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**PutAdminSettingsScimUpdate**](AdminSettingsAPI.md#PutAdminSettingsScimUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**PutAdminSettingsSecurityUpdate**](AdminSettingsAPI.md#PutAdminSettingsSecurityUpdate) | **Put** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**PutAdminTenantUpdate**](AdminSettingsAPI.md#PutAdminTenantUpdate) | **Put** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings



## AdminAnalyticsDashboard

> AdminAnalyticsDashboardResponse AdminAnalyticsDashboard(ctx, orgId).Execute()

Get dashboard analytics

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminAnalyticsDashboard(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminAnalyticsDashboard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAnalyticsDashboard`: AdminAnalyticsDashboardResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminAnalyticsDashboard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAnalyticsDashboardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAnalyticsLogins

> AdminAnalyticsLoginsResponse AdminAnalyticsLogins(ctx, orgId).Days(days).Execute()

Get login analytics

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	days := int32(56) // int32 | Window in days (1-90, default 30). (optional) (default to 30)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminAnalyticsLogins(context.Background(), orgId).Days(days).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminAnalyticsLogins``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAnalyticsLogins`: AdminAnalyticsLoginsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminAnalyticsLogins`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAnalyticsLoginsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **days** | **int32** | Window in days (1-90, default 30). | [default to 30]

### Return type

[**AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminAnalyticsUsers

> AdminAnalyticsUsersResponse AdminAnalyticsUsers(ctx, orgId).Days(days).Execute()

Get user growth analytics

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	days := int32(56) // int32 | Window in days (1-90, default 30). (optional) (default to 30)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminAnalyticsUsers(context.Background(), orgId).Days(days).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminAnalyticsUsers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminAnalyticsUsers`: AdminAnalyticsUsersResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminAnalyticsUsers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminAnalyticsUsersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **days** | **int32** | Window in days (1-90, default 30). | [default to 30]

### Return type

[**AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrganizationGet

> AdminTenantGetResponse AdminOrganizationGet(ctx, orgId).Execute()

Get organization (tenant) profile

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminOrganizationGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminOrganizationGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrganizationGet`: AdminTenantGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminOrganizationGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrganizationGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsAll

> AdminSettingsAllResponse AdminSettingsAll(ctx, orgId).Execute()

Get all settings (combined)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsAll(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsAll``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsAll`: AdminSettingsAllResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsAll`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsAllRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsAuthGet

> AdminSettingsAuthenticationGetResponse AdminSettingsAuthGet(ctx, orgId).Execute()

Get authentication settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsAuthGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsAuthGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsAuthGet`: AdminSettingsAuthenticationGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsAuthGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsAuthGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsAuthenticationGet

> AdminSettingsAuthenticationGetResponse AdminSettingsAuthenticationGet(ctx, orgId).Execute()

Get authentication settings (alias for settings/auth)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsAuthenticationGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsAuthenticationGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsAuthenticationGet`: AdminSettingsAuthenticationGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsAuthenticationGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsAuthenticationGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsBrandingGet

> AdminSettingsBrandingGetResponse AdminSettingsBrandingGet(ctx, orgId).Execute()

Get branding/login page settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsBrandingGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsBrandingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsBrandingGet`: AdminSettingsBrandingGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsBrandingGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsBrandingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsEmailGet

> AdminSettingsEmailGetResponse AdminSettingsEmailGet(ctx, orgId).Execute()

Get email settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsEmailGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsEmailGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsEmailGet`: AdminSettingsEmailGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsEmailGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsEmailGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsGeneralGet

> AdminSettingsGeneralGetResponse AdminSettingsGeneralGet(ctx, orgId).Execute()

Get general settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsGeneralGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsGeneralGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsGeneralGet`: AdminSettingsGeneralGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsGeneralGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsGeneralGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsScimGet

> AdminSettingsScimGetResponse AdminSettingsScimGet(ctx, orgId).Execute()

Get SCIM settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsScimGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsScimGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsScimGet`: AdminSettingsScimGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsScimGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsScimGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminSettingsSecurityGet

> AdminSettingsSecurityGetResponse AdminSettingsSecurityGet(ctx, orgId).Execute()

Get security settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminSettingsSecurityGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminSettingsSecurityGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminSettingsSecurityGet`: AdminSettingsSecurityGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminSettingsSecurityGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminSettingsSecurityGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminTenantGet

> AdminTenantGetResponse AdminTenantGet(ctx, orgId).Execute()

Get organization (tenant) profile

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.AdminTenantGet(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.AdminTenantGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminTenantGet`: AdminTenantGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.AdminTenantGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminTenantGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminOrganizationUpdate

> PutAdminTenantUpdateResponse PatchAdminOrganizationUpdate(ctx, orgId).Execute()

Update organization (tenant) name and settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminOrganizationUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminOrganizationUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminOrganizationUpdate`: PutAdminTenantUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminOrganizationUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminOrganizationUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsAuthUpdate

> PutAdminSettingsAuthenticationUpdateResponse PatchAdminSettingsAuthUpdate(ctx, orgId).Execute()

Update authentication settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsAuthUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsAuthUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsAuthUpdate`: PutAdminSettingsAuthenticationUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsAuthUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsAuthUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsAuthenticationUpdate

> PutAdminSettingsAuthenticationUpdateResponse PatchAdminSettingsAuthenticationUpdate(ctx, orgId).Execute()

Update authentication settings (alias for settings/auth)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsAuthenticationUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsAuthenticationUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsAuthenticationUpdate`: PutAdminSettingsAuthenticationUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsAuthenticationUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsAuthenticationUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsBrandingUpdate

> PutAdminSettingsBrandingUpdateResponse PatchAdminSettingsBrandingUpdate(ctx, orgId).Execute()

Update branding/login page settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsBrandingUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsBrandingUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsBrandingUpdate`: PutAdminSettingsBrandingUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsBrandingUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsBrandingUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsEmailUpdate

> PutAdminSettingsEmailUpdateResponse PatchAdminSettingsEmailUpdate(ctx, orgId).Execute()

Update email settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsEmailUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsEmailUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsEmailUpdate`: PutAdminSettingsEmailUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsEmailUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsEmailUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsGeneralUpdate

> PutAdminSettingsGeneralUpdateResponse PatchAdminSettingsGeneralUpdate(ctx, orgId).Execute()

Update general settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsGeneralUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsGeneralUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsGeneralUpdate`: PutAdminSettingsGeneralUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsGeneralUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsGeneralUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsScimUpdate

> PutAdminSettingsScimUpdateResponse PatchAdminSettingsScimUpdate(ctx, orgId).Execute()

Update SCIM settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsScimUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsScimUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsScimUpdate`: PutAdminSettingsScimUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsScimUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsScimUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminSettingsSecurityUpdate

> PutAdminSettingsSecurityUpdateResponse PatchAdminSettingsSecurityUpdate(ctx, orgId).Execute()

Update security settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminSettingsSecurityUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminSettingsSecurityUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminSettingsSecurityUpdate`: PutAdminSettingsSecurityUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminSettingsSecurityUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminSettingsSecurityUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminTenantUpdate

> PutAdminTenantUpdateResponse PatchAdminTenantUpdate(ctx, orgId).Execute()

Update organization (tenant) name and settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PatchAdminTenantUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PatchAdminTenantUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminTenantUpdate`: PutAdminTenantUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PatchAdminTenantUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminTenantUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminOrganizationUpdate

> PutAdminTenantUpdateResponse PutAdminOrganizationUpdate(ctx, orgId).Execute()

Update organization (tenant) name and settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminOrganizationUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminOrganizationUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminOrganizationUpdate`: PutAdminTenantUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminOrganizationUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminOrganizationUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsAuthUpdate

> PutAdminSettingsAuthenticationUpdateResponse PutAdminSettingsAuthUpdate(ctx, orgId).Execute()

Update authentication settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsAuthUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsAuthUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsAuthUpdate`: PutAdminSettingsAuthenticationUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsAuthUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsAuthUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsAuthenticationUpdate

> PutAdminSettingsAuthenticationUpdateResponse PutAdminSettingsAuthenticationUpdate(ctx, orgId).Execute()

Update authentication settings (alias for settings/auth)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsAuthenticationUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsAuthenticationUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsAuthenticationUpdate`: PutAdminSettingsAuthenticationUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsAuthenticationUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsAuthenticationUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsBrandingUpdate

> PutAdminSettingsBrandingUpdateResponse PutAdminSettingsBrandingUpdate(ctx, orgId).Execute()

Update branding/login page settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsBrandingUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsBrandingUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsBrandingUpdate`: PutAdminSettingsBrandingUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsBrandingUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsBrandingUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsEmailUpdate

> PutAdminSettingsEmailUpdateResponse PutAdminSettingsEmailUpdate(ctx, orgId).Execute()

Update email settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsEmailUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsEmailUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsEmailUpdate`: PutAdminSettingsEmailUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsEmailUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsEmailUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsGeneralUpdate

> PutAdminSettingsGeneralUpdateResponse PutAdminSettingsGeneralUpdate(ctx, orgId).Execute()

Update general settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsGeneralUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsGeneralUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsGeneralUpdate`: PutAdminSettingsGeneralUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsGeneralUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsGeneralUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsScimUpdate

> PutAdminSettingsScimUpdateResponse PutAdminSettingsScimUpdate(ctx, orgId).Execute()

Update SCIM settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsScimUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsScimUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsScimUpdate`: PutAdminSettingsScimUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsScimUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsScimUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminSettingsSecurityUpdate

> PutAdminSettingsSecurityUpdateResponse PutAdminSettingsSecurityUpdate(ctx, orgId).Execute()

Update security settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminSettingsSecurityUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminSettingsSecurityUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminSettingsSecurityUpdate`: PutAdminSettingsSecurityUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminSettingsSecurityUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminSettingsSecurityUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminTenantUpdate

> PutAdminTenantUpdateResponse PutAdminTenantUpdate(ctx, orgId).Execute()

Update organization (tenant) name and settings

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminSettingsAPI.PutAdminTenantUpdate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminSettingsAPI.PutAdminTenantUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminTenantUpdate`: PutAdminTenantUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminSettingsAPI.PutAdminTenantUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminTenantUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

