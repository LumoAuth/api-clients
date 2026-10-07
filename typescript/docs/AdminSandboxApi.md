# AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminSandboxDestroy**](#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant|
|[**adminSandboxList**](#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller\&#39;s sandbox tenants|
|[**adminSandboxSpawn**](#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant|

# **adminSandboxDestroy**
> MessageResponse adminSandboxDestroy()


### Example

```typescript
import {
    AdminSandboxApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSandboxApi(configuration);

let orgId: string; // (default to undefined)
let sandboxSlug: string; // (default to undefined)

const { status, data } = await apiInstance.adminSandboxDestroy(
    orgId,
    sandboxSlug
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **sandboxSlug** | [**string**] |  | defaults to undefined|


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
|**200** | Sandbox destroyed |  -  |
|**404** | Sandbox not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxList**
> AdminSandboxListResponse adminSandboxList()


### Example

```typescript
import {
    AdminSandboxApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSandboxApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSandboxList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSandboxListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sandboxes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxSpawn**
> AdminSandboxSpawnResponse adminSandboxSpawn()


### Example

```typescript
import {
    AdminSandboxApi,
    Configuration,
    AdminSandboxSpawnRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSandboxApi(configuration);

let orgId: string; // (default to undefined)
let adminSandboxSpawnRequest: AdminSandboxSpawnRequest; // (optional)

const { status, data } = await apiInstance.adminSandboxSpawn(
    orgId,
    adminSandboxSpawnRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminSandboxSpawnRequest** | **AdminSandboxSpawnRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSandboxSpawnResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Sandbox created |  -  |
|**429** | Per-owner active-sandbox cap reached |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

