# AdminGroupsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminGroupsAddMembers**](#admingroupsaddmembers) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group|
|[**adminGroupsAddRole**](#admingroupsaddrole) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group|
|[**adminGroupsCreate**](#admingroupscreate) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group|
|[**adminGroupsDelete**](#admingroupsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group|
|[**adminGroupsGet**](#admingroupsget) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug|
|[**adminGroupsGetMembers**](#admingroupsgetmembers) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members|
|[**adminGroupsGroupsGetRoles**](#admingroupsgroupsgetroles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles|
|[**adminGroupsList**](#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant|
|[**adminGroupsRemoveMember**](#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group|
|[**adminGroupsRemoveRole**](#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group|
|[**adminGroupsUpdateRoles**](#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)|
|[**patchAdminGroupsUpdate**](#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group|
|[**putAdminGroupsUpdate**](#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group|

# **adminGroupsAddMembers**
> AdminGroupsCreateResponse adminGroupsAddMembers()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsAddMembers(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group; message reports how many members were added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsAddRole**
> MessageResponse adminGroupsAddRole()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsAddRole(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


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
|**200** | Added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsCreate**
> AdminGroupsCreateResponse adminGroupsCreate()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Created group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsDelete**
> MessageResponse adminGroupsDelete()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsDelete(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGet**
> AdminGroupsGetResponse adminGroupsGet()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsGet(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGetMembers**
> AdminGroupsGetMembersResponse adminGroupsGetMembers()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsGetMembers(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsGetMembersResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Group members |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGroupsGetRoles**
> AdminGroupsGroupsGetRolesResponse adminGroupsGroupsGetRoles()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsGroupsGetRoles(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsGroupsGetRolesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Group roles |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsList**
> AdminGroupsListResponse adminGroupsList()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Groups |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsRemoveMember**
> MessageResponse adminGroupsRemoveMember()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsRemoveMember(
    orgId,
    groupId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


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
|**200** | Removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsRemoveRole**
> MessageResponse adminGroupsRemoveRole()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let roleId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsRemoveRole(
    orgId,
    groupId,
    roleId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|
| **roleId** | [**string**] |  | defaults to undefined|


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
|**200** | Removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsUpdateRoles**
> AdminGroupsCreateResponse adminGroupsUpdateRoles()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.adminGroupsUpdateRoles(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminGroupsUpdate**
> AdminGroupsCreateResponse patchAdminGroupsUpdate()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminGroupsUpdate(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminGroupsUpdate**
> AdminGroupsCreateResponse putAdminGroupsUpdate()


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminGroupsUpdate(
    orgId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

