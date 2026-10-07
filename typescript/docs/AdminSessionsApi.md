# AdminSessionsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminClientTokensRevokeAll**](#adminclienttokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client|
|[**adminClientTokensRevokePost**](#adminclienttokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)|
|[**adminSessionsCount**](#adminsessionscount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count|
|[**adminSessionsList**](#adminsessionslist) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions|
|[**adminSessionsRevoke**](#adminsessionsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session|
|[**adminSessionsRevokeAll**](#adminsessionsrevokeall) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant|
|[**adminSessionsStats**](#adminsessionsstats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics|
|[**adminTokensList**](#admintokenslist) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens|
|[**adminTokensRevoke**](#admintokensrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token|
|[**adminUserSessionsList**](#adminusersessionslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user\&#39;s active sessions|
|[**adminUserSessionsRevokeAll**](#adminusersessionsrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user|
|[**adminUserSessionsRevokePost**](#adminusersessionsrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)|
|[**adminUserTokensRevokeAll**](#adminusertokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user|
|[**adminUserTokensRevokePost**](#adminusertokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)|

# **adminClientTokensRevokeAll**
> AdminClientTokensRevokeAllResponse adminClientTokensRevokeAll()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.adminClientTokensRevokeAll(
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

**AdminClientTokensRevokeAllResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tokens revoked; the message carries the count |  -  |
|**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminClientTokensRevokePost**
> AdminUserTokensRevokePostResponse adminClientTokensRevokePost()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let clientId: string; // (default to undefined)

const { status, data } = await apiInstance.adminClientTokensRevokePost(
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

**AdminUserTokensRevokePostResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tokens revoked; the message carries the count |  -  |
|**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsCount**
> AdminSessionsCountResponse adminSessionsCount()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSessionsCount(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSessionsCountResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Active session count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsList**
> AdminSessionsListResponse adminSessionsList()

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional `userId` filter accepts a user UUID or email.

### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSessionsList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSessionsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sessions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsRevoke**
> AdminSessionsRevokeResponse adminSessionsRevoke()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let sessionId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSessionsRevoke(
    orgId,
    sessionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **sessionId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSessionsRevokeResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Session revoked |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | Session not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsRevokeAll**
> AdminSessionsRevokeAllResponse adminSessionsRevokeAll(adminSessionsRevokeAllRequest)

Signs out all users. Requires `confirm: true` in the body.

### Example

```typescript
import {
    AdminSessionsApi,
    Configuration,
    AdminSessionsRevokeAllRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let adminSessionsRevokeAllRequest: AdminSessionsRevokeAllRequest; //

const { status, data } = await apiInstance.adminSessionsRevokeAll(
    orgId,
    adminSessionsRevokeAllRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminSessionsRevokeAllRequest** | **AdminSessionsRevokeAllRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSessionsRevokeAllResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sessions revoked; the message carries the count |  -  |
|**400** | confirm: true is required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsStats**
> AdminSessionsStatsResponse adminSessionsStats()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminSessionsStats(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminSessionsStatsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Session counts |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTokensList**
> AdminTokensListResponse adminTokensList()

Paginated OAuth access tokens issued by the tenant\'s clients. Filters: `revoked` (bool), `clientId`, `userId`.

### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminTokensList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminTokensListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tokens |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTokensRevoke**
> AdminTokensRevokeResponse adminTokensRevoke()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let tokenId: string; // (default to undefined)

const { status, data } = await apiInstance.adminTokensRevoke(
    orgId,
    tokenId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **tokenId** | [**string**] |  | defaults to undefined|


### Return type

**AdminTokensRevokeResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Token revoked |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | Token not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsList**
> AdminUserSessionsListResponse adminUserSessionsList()

All active sessions of one user (UUID or email), returned as a single page.

### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUserSessionsList(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUserSessionsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sessions |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsRevokeAll**
> AdminUserSessionsRevokeAllResponse adminUserSessionsRevokeAll()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUserSessionsRevokeAll(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUserSessionsRevokeAllResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sessions revoked; the message carries the count |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsRevokePost**
> AdminUserSessionsRevokePostResponse adminUserSessionsRevokePost()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUserSessionsRevokePost(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUserSessionsRevokePostResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sessions revoked; the message carries the count |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserTokensRevokeAll**
> AdminUserTokensRevokeAllResponse adminUserTokensRevokeAll()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUserTokensRevokeAll(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUserTokensRevokeAllResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tokens revoked |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserTokensRevokePost**
> AdminUserTokensRevokePostResponse adminUserTokensRevokePost()


### Example

```typescript
import {
    AdminSessionsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminSessionsApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUserTokensRevokePost(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUserTokensRevokePostResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tokens revoked; the message carries the count |  -  |
|**403** | Target holds privileges the actor lacks |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

