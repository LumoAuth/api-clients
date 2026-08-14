# AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminSandboxDestroy**](#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.|
|[**adminSandboxList**](#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller\&#39;s active sandbox tenants (their own only).|
|[**adminSandboxSpawn**](#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\&quot;name\&quot;?: \&quot;feature-foo\&quot;, \&quot;ttl_hours\&quot;?: 24}|

# **adminSandboxDestroy**
> adminSandboxDestroy()


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

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxList**
> adminSandboxList()


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

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxSpawn**
> adminSandboxSpawn()


### Example

```typescript
import {
    AdminSandboxApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSandboxApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSandboxSpawn(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

