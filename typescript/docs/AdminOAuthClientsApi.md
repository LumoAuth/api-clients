# AdminOAuthClientsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createClient**](#createclient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client|
|[**deleteClient**](#deleteclient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client|
|[**disableClient**](#disableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client|
|[**enableClient**](#enableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client|
|[**getClient**](#getclient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client|
|[**listClientScopes**](#listclientscopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client|
|[**listClients**](#listclients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients|
|[**patchClient**](#patchclient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client|
|[**rotateClientSecret**](#rotateclientsecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret|
|[**setClientScopes**](#setclientscopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client|
|[**updateClient**](#updateclient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client|

# **createClient**
> CreateClientResponse createClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.createClient(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CreateClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Created — the plaintext secret is included once and never shown again |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClient**
> MessageResponse deleteClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.deleteClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


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
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableClient**
> UpdateClientResponse disableClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.disableClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Client disabled (summary fields only) |  -  |
|**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableClient**
> UpdateClientResponse enableClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.enableClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Client enabled (summary fields only) |  -  |
|**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClient**
> GetClientResponse getClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.getClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**GetClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OAuth client (detailed) |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClientScopes**
> ListClientScopesResponse listClientScopes()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.listClientScopes(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**ListClientScopesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Scope names |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClients**
> ListClientsResponse listClients()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listClients(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListClientsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OAuth clients (summary fields only) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchClient**
> UpdateClientResponse patchClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.patchClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated OAuth client (detailed) |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateClientSecret**
> RotateClientSecretResponse rotateClientSecret()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.rotateClientSecret(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**RotateClientSecretResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Rotated — the new plaintext secret is included once and never shown again |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClientScopes**
> SetClientScopesResponse setClientScopes()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.setClientScopes(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**SetClientScopesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated scope names |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClient**
> UpdateClientResponse updateClient()


### Example

```typescript
import {
    AdminOAuthClientsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOAuthClientsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.updateClient(
    orgId,
    clientId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **clientId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateClientResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated OAuth client (detailed) |  -  |
|**404** | OAuth client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

