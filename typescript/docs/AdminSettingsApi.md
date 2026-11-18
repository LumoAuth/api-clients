# AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminAnalyticsDashboard**](#adminanalyticsdashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics|
|[**adminAnalyticsLogins**](#adminanalyticslogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics|
|[**adminAnalyticsUsers**](#adminanalyticsusers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics|
|[**adminOrganizationGet**](#adminorganizationget) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile|
|[**adminSettingsAll**](#adminsettingsall) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)|
|[**adminSettingsAuthGet**](#adminsettingsauthget) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings|
|[**adminSettingsAuthenticationGet**](#adminsettingsauthenticationget) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)|
|[**adminSettingsBrandingGet**](#adminsettingsbrandingget) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings|
|[**adminSettingsEmailGet**](#adminsettingsemailget) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings|
|[**adminSettingsGeneralGet**](#adminsettingsgeneralget) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings|
|[**adminSettingsScimGet**](#adminsettingsscimget) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings|
|[**adminSettingsSecurityGet**](#adminsettingssecurityget) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings|
|[**adminTenantGet**](#admintenantget) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile|
|[**patchAdminOrganizationUpdate**](#patchadminorganizationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings|
|[**patchAdminSettingsAuthUpdate**](#patchadminsettingsauthupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings|
|[**patchAdminSettingsAuthenticationUpdate**](#patchadminsettingsauthenticationupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)|
|[**patchAdminSettingsBrandingUpdate**](#patchadminsettingsbrandingupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings|
|[**patchAdminSettingsEmailUpdate**](#patchadminsettingsemailupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings|
|[**patchAdminSettingsGeneralUpdate**](#patchadminsettingsgeneralupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings|
|[**patchAdminSettingsScimUpdate**](#patchadminsettingsscimupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings|
|[**patchAdminSettingsSecurityUpdate**](#patchadminsettingssecurityupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings|
|[**patchAdminTenantUpdate**](#patchadmintenantupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings|
|[**putAdminOrganizationUpdate**](#putadminorganizationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings|
|[**putAdminSettingsAuthUpdate**](#putadminsettingsauthupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings|
|[**putAdminSettingsAuthenticationUpdate**](#putadminsettingsauthenticationupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)|
|[**putAdminSettingsBrandingUpdate**](#putadminsettingsbrandingupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings|
|[**putAdminSettingsEmailUpdate**](#putadminsettingsemailupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings|
|[**putAdminSettingsGeneralUpdate**](#putadminsettingsgeneralupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings|
|[**putAdminSettingsScimUpdate**](#putadminsettingsscimupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings|
|[**putAdminSettingsSecurityUpdate**](#putadminsettingssecurityupdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings|
|[**putAdminTenantUpdate**](#putadmintenantupdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings|

# **adminAnalyticsDashboard**
> AdminAnalyticsDashboardResponse adminAnalyticsDashboard()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminAnalyticsDashboard(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAnalyticsDashboardResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dashboard counters |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAnalyticsLogins**
> AdminAnalyticsLoginsResponse adminAnalyticsLogins()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let days: number; //Window in days (1-90, default 30). (optional) (default to 30)

const { status, data } = await apiInstance.adminAnalyticsLogins(
    orgId,
    days
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **days** | [**number**] | Window in days (1-90, default 30). | (optional) defaults to 30|


### Return type

**AdminAnalyticsLoginsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Daily login attempts |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAnalyticsUsers**
> AdminAnalyticsUsersResponse adminAnalyticsUsers()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let days: number; //Window in days (1-90, default 30). (optional) (default to 30)

const { status, data } = await apiInstance.adminAnalyticsUsers(
    orgId,
    days
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **days** | [**number**] | Window in days (1-90, default 30). | (optional) defaults to 30|


### Return type

**AdminAnalyticsUsersResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Daily registrations and user breakdowns |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationGet**
> AdminTenantGetResponse adminOrganizationGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrganizationGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminTenantGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Organization profile |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAll**
> AdminSettingsAllResponse adminSettingsAll()

Needs `settings.view`. The `branding` part is returned only to a caller who also holds `branding.view` (for an API key, its creator), as for GET /settings/branding and the portal\'s branding page; without it the key is left out.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsAll(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsAllResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Combined settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAuthGet**
> AdminSettingsAuthenticationGetResponse adminSettingsAuthGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsAuthGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsAuthenticationGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authentication settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsAuthenticationGet**
> AdminSettingsAuthenticationGetResponse adminSettingsAuthenticationGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsAuthenticationGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsAuthenticationGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authentication settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsBrandingGet**
> AdminSettingsBrandingGetResponse adminSettingsBrandingGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsBrandingGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsBrandingGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Branding settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsEmailGet**
> AdminSettingsEmailGetResponse adminSettingsEmailGet()

Shows who sends the organization\'s mail: its own mail provider (set up in the portal) with the From address, From name and Reply-To stored there, or LumoAuth with LumoAuth\'s sender.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsEmailGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsEmailGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Email settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsGeneralGet**
> AdminSettingsGeneralGetResponse adminSettingsGeneralGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsGeneralGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsGeneralGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | General settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsScimGet**
> AdminSettingsScimGetResponse adminSettingsScimGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsScimGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsScimGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSettingsSecurityGet**
> AdminSettingsSecurityGetResponse adminSettingsSecurityGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSettingsSecurityGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSettingsSecurityGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTenantGet**
> AdminTenantGetResponse adminTenantGet()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminTenantGet(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminTenantGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Organization profile |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrganizationUpdate**
> PutAdminTenantUpdateResponse patchAdminOrganizationUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminOrganizationUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminTenantUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization profile |  -  |
|**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsAuthUpdate**
> PutAdminSettingsAuthenticationUpdateResponse patchAdminSettingsAuthUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSettingsAuthUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsAuthenticationUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated authentication settings |  -  |
|**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsAuthenticationUpdate**
> PutAdminSettingsAuthenticationUpdateResponse patchAdminSettingsAuthenticationUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSettingsAuthenticationUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsAuthenticationUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated authentication settings |  -  |
|**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsBrandingUpdate**
> PutAdminSettingsBrandingUpdateResponse patchAdminSettingsBrandingUpdate()

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSettingsBrandingUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsBrandingUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated branding settings |  -  |
|**403** | A sign-in policy key would change without settings.manage, or custom_css, custom_html or show_powered_by: false would be set on a plan that does not include it. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsEmailUpdate**
> PutAdminSettingsEmailUpdateResponse patchAdminSettingsEmailUpdate()

Changes the sender of the mail that the organization\'s own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth\'s sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration,
    PutAdminSettingsEmailUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminSettingsEmailUpdateRequest: PutAdminSettingsEmailUpdateRequest; // (optional)

const { status, data } = await apiInstance.patchAdminSettingsEmailUpdate(
    orgId,
    putAdminSettingsEmailUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminSettingsEmailUpdateRequest** | **PutAdminSettingsEmailUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsEmailUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated email settings |  -  |
|**400** | A value is not valid, a field is not supported, or the organization has no mail provider of its own (details.rejected_keys names the fields). Nothing is stored. |  -  |
|**403** | The caller does not hold settings.manage and users.delete. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsGeneralUpdate**
> PutAdminSettingsGeneralUpdateResponse patchAdminSettingsGeneralUpdate()

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration,
    PutAdminSettingsGeneralUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminSettingsGeneralUpdateRequest: PutAdminSettingsGeneralUpdateRequest; // (optional)

const { status, data } = await apiInstance.patchAdminSettingsGeneralUpdate(
    orgId,
    putAdminSettingsGeneralUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminSettingsGeneralUpdateRequest** | **PutAdminSettingsGeneralUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsGeneralUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated general settings |  -  |
|**400** | A value is not valid (empty or too long name, unknown language, different values for name and one of its aliases) or is not a setting (timezone). Nothing is stored. |  -  |
|**403** | The caller does not hold settings.manage, or locale would change and the caller does not hold branding.edit. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsScimUpdate**
> PutAdminSettingsScimUpdateResponse patchAdminSettingsScimUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSettingsScimUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsScimUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSettingsSecurityUpdate**
> PutAdminSettingsSecurityUpdateResponse patchAdminSettingsSecurityUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSettingsSecurityUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsSecurityUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminTenantUpdate**
> PutAdminTenantUpdateResponse patchAdminTenantUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminTenantUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminTenantUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization profile |  -  |
|**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrganizationUpdate**
> PutAdminTenantUpdateResponse putAdminOrganizationUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminOrganizationUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminTenantUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization profile |  -  |
|**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsAuthUpdate**
> PutAdminSettingsAuthenticationUpdateResponse putAdminSettingsAuthUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSettingsAuthUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsAuthenticationUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated authentication settings |  -  |
|**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsAuthenticationUpdate**
> PutAdminSettingsAuthenticationUpdateResponse putAdminSettingsAuthenticationUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSettingsAuthenticationUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsAuthenticationUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated authentication settings |  -  |
|**403** | The caller does not hold settings.manage; or cimd_allowed_scopes gains an admin scope and the caller is not a full administrator (settings.manage and users.delete), or gains authz:check and the caller does not hold policies.view; or the change repoints a social provider that accounts the caller does not outrank are bound to. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsBrandingUpdate**
> PutAdminSettingsBrandingUpdateResponse putAdminSettingsBrandingUpdate()

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSettingsBrandingUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsBrandingUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated branding settings |  -  |
|**403** | A sign-in policy key would change without settings.manage, or custom_css, custom_html or show_powered_by: false would be set on a plan that does not include it. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsEmailUpdate**
> PutAdminSettingsEmailUpdateResponse putAdminSettingsEmailUpdate()

Changes the sender of the mail that the organization\'s own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth\'s sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration,
    PutAdminSettingsEmailUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminSettingsEmailUpdateRequest: PutAdminSettingsEmailUpdateRequest; // (optional)

const { status, data } = await apiInstance.putAdminSettingsEmailUpdate(
    orgId,
    putAdminSettingsEmailUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminSettingsEmailUpdateRequest** | **PutAdminSettingsEmailUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsEmailUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated email settings |  -  |
|**400** | A value is not valid, a field is not supported, or the organization has no mail provider of its own (details.rejected_keys names the fields). Nothing is stored. |  -  |
|**403** | The caller does not hold settings.manage and users.delete. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsGeneralUpdate**
> PutAdminSettingsGeneralUpdateResponse putAdminSettingsGeneralUpdate()

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Example

```typescript
import {
    AdminSettingsApi,
    Configuration,
    PutAdminSettingsGeneralUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)
let putAdminSettingsGeneralUpdateRequest: PutAdminSettingsGeneralUpdateRequest; // (optional)

const { status, data } = await apiInstance.putAdminSettingsGeneralUpdate(
    orgId,
    putAdminSettingsGeneralUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminSettingsGeneralUpdateRequest** | **PutAdminSettingsGeneralUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsGeneralUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated general settings |  -  |
|**400** | A value is not valid (empty or too long name, unknown language, different values for name and one of its aliases) or is not a setting (timezone). Nothing is stored. |  -  |
|**403** | The caller does not hold settings.manage, or locale would change and the caller does not hold branding.edit. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsScimUpdate**
> PutAdminSettingsScimUpdateResponse putAdminSettingsScimUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSettingsScimUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsScimUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated SCIM settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSettingsSecurityUpdate**
> PutAdminSettingsSecurityUpdateResponse putAdminSettingsSecurityUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSettingsSecurityUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminSettingsSecurityUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated security settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminTenantUpdate**
> PutAdminTenantUpdateResponse putAdminTenantUpdate()


### Example

```typescript
import {
    AdminSettingsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSettingsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminTenantUpdate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminTenantUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization profile |  -  |
|**403** | The caller does not hold settings.manage, or settings.audit_log_retention_days or settings.audit_log_auto_delete would change and the caller does not hold gdpr.manage. Nothing is stored. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

