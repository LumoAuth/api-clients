# AdminIdentityProvidersApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminSocialProvidersAvailable**](#adminsocialprovidersavailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types|
|[**adminSocialProvidersCallbackUrls**](#adminsocialproviderscallbackurls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider|
|[**adminSocialProvidersCreate**](#adminsocialproviderscreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider|
|[**adminSocialProvidersDelete**](#adminsocialprovidersdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider|
|[**adminSocialProvidersDisable**](#adminsocialprovidersdisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider|
|[**adminSocialProvidersEnable**](#adminsocialprovidersenable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider|
|[**adminSocialProvidersGet**](#adminsocialprovidersget) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider|
|[**adminSocialProvidersList**](#adminsocialproviderslist) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers|
|[**adminSocialProvidersTypes**](#adminsocialproviderstypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types|
|[**patchAdminSocialProvidersUpdate**](#patchadminsocialprovidersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider|
|[**putAdminSocialProvidersUpdate**](#putadminsocialprovidersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider|

# **adminSocialProvidersAvailable**
> AdminSocialProvidersAvailableResponse adminSocialProvidersAvailable()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersAvailable(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersAvailableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Provider types |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersCallbackUrls**
> AdminSocialProvidersCallbackUrlsResponse adminSocialProvidersCallbackUrls()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersCallbackUrls(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCallbackUrlsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Map of provider name to callback URL |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersCreate**
> AdminSocialProvidersCreateResponse adminSocialProvidersCreate()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Created provider (detailed; secrets redacted) |  -  |
|**409** | Provider already configured |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersDelete**
> MessageResponse adminSocialProvidersDelete()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersDelete(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


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
|**200** | Deleted |  -  |
|**404** | Social login provider not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersDisable**
> AdminSocialProvidersCreateResponse adminSocialProvidersDisable()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersDisable(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Provider disabled (summary fields only) |  -  |
|**404** | Social login provider not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersEnable**
> AdminSocialProvidersCreateResponse adminSocialProvidersEnable()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersEnable(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Provider enabled (summary fields only) |  -  |
|**404** | Social login provider not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersGet**
> AdminSocialProvidersGetResponse adminSocialProvidersGet()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersGet(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Provider (detailed; secrets redacted) |  -  |
|**404** | Social login provider not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersList**
> AdminSocialProvidersListResponse adminSocialProvidersList()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Providers (summary fields only) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersTypes**
> AdminSocialProvidersAvailableResponse adminSocialProvidersTypes()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSocialProvidersTypes(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersAvailableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Provider types |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSocialProvidersUpdate**
> AdminSocialProvidersCreateResponse patchAdminSocialProvidersUpdate()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminSocialProvidersUpdate(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated provider (detailed) |  -  |
|**404** | Social login provider not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSocialProvidersUpdate**
> AdminSocialProvidersCreateResponse putAdminSocialProvidersUpdate()


### Example

```typescript
import {
    AdminIdentityProvidersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminIdentityProvidersApi(configuration);

let orgId: string; // (default to undefined)
let providerId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminSocialProvidersUpdate(
    orgId,
    providerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **providerId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSocialProvidersCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated provider (detailed) |  -  |
|**201** | Provider did not exist and was created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

