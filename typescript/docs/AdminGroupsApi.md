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
|[**adminGroupsList**](#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the organization|
|[**adminGroupsRemoveMember**](#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group|
|[**adminGroupsRemoveRole**](#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group|
|[**adminGroupsUpdateRoles**](#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)|
|[**patchAdminGroupsUpdate**](#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group|
|[**putAdminGroupsUpdate**](#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group|

# **adminGroupsAddMembers**
> AdminGroupsCreateResponse adminGroupsAddMembers(adminGroupsAddMembersRequest)


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    AdminGroupsAddMembersRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let adminGroupsAddMembersRequest: AdminGroupsAddMembersRequest; //

const { status, data } = await apiInstance.adminGroupsAddMembers(
    orgId,
    groupId,
    adminGroupsAddMembersRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminGroupsAddMembersRequest** | **AdminGroupsAddMembersRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group; message reports how many members were added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsAddRole**
> MessageResponse adminGroupsAddRole(adminGroupsAddRoleRequest)

A role can be given to a group only when it belongs to this organization and the caller may grant every permission in it (every built-in one the caller holds; the organization\'s own ones need `roles.assign-permissions`, and an API key or access token also needs `admin:roles:write` or `admin:permissions:write`); otherwise the answer is 403 and nothing is stored. The built-in administrator role follows the same rule. When a role opens the admin portal (the built-in one or any role with a portal permission), each active member of the group who is not an administrator yet takes an admin seat (403 `plan_limit_reached` when the plan has too few left).

### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    AdminGroupsAddRoleRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let adminGroupsAddRoleRequest: AdminGroupsAddRoleRequest; //

const { status, data } = await apiInstance.adminGroupsAddRole(
    orgId,
    groupId,
    adminGroupsAddRoleRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminGroupsAddRoleRequest** | **AdminGroupsAddRoleRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**MessageResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsCreate**
> AdminGroupsCreateResponse adminGroupsCreate(adminGroupsCreateRequest)

Optional `roles` is a list of role slugs. An unknown slug is 400. A role can be given to a group only when it belongs to this organization and the caller may grant every permission in it (every built-in one the caller holds; the organization\'s own ones need `roles.assign-permissions`, and an API key or access token also needs `admin:roles:write` or `admin:permissions:write`); otherwise the answer is 403 and nothing is stored. The built-in administrator role follows the same rule. When a role opens the admin portal (the built-in one or any role with a portal permission), each active member of the group who is not an administrator yet takes an admin seat (403 `plan_limit_reached` when the plan has too few left).

### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    AdminGroupsCreateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let adminGroupsCreateRequest: AdminGroupsCreateRequest; //

const { status, data } = await apiInstance.adminGroupsCreate(
    orgId,
    adminGroupsCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminGroupsCreateRequest** | **AdminGroupsCreateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
> AdminGroupsCreateResponse adminGroupsUpdateRoles(adminGroupsUpdateRolesRequest)

`roles` is the full list of role slugs. An unknown slug is 400. A role can be given to a group only when it belongs to this organization and the caller may grant every permission in it (every built-in one the caller holds; the organization\'s own ones need `roles.assign-permissions`, and an API key or access token also needs `admin:roles:write` or `admin:permissions:write`); otherwise the answer is 403 and nothing is stored. The built-in administrator role follows the same rule. When a role opens the admin portal (the built-in one or any role with a portal permission), each active member of the group who is not an administrator yet takes an admin seat (403 `plan_limit_reached` when the plan has too few left). Roles already on the group that the caller could not grant stay on it whatever the list says.

### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    AdminGroupsUpdateRolesRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let adminGroupsUpdateRolesRequest: AdminGroupsUpdateRolesRequest; //

const { status, data } = await apiInstance.adminGroupsUpdateRoles(
    orgId,
    groupId,
    adminGroupsUpdateRolesRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminGroupsUpdateRolesRequest** | **AdminGroupsUpdateRolesRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminGroupsUpdate**
> AdminGroupsCreateResponse patchAdminGroupsUpdate(putAdminGroupsUpdateRequest)


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    PutAdminGroupsUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let putAdminGroupsUpdateRequest: PutAdminGroupsUpdateRequest; //

const { status, data } = await apiInstance.patchAdminGroupsUpdate(
    orgId,
    groupId,
    putAdminGroupsUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminGroupsUpdateRequest** | **PutAdminGroupsUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminGroupsUpdate**
> AdminGroupsCreateResponse putAdminGroupsUpdate(putAdminGroupsUpdateRequest)


### Example

```typescript
import {
    AdminGroupsApi,
    Configuration,
    PutAdminGroupsUpdateRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminGroupsApi(configuration);

let orgId: string; // (default to undefined)
let groupId: string; // (default to undefined)
let putAdminGroupsUpdateRequest: PutAdminGroupsUpdateRequest; //

const { status, data } = await apiInstance.putAdminGroupsUpdate(
    orgId,
    groupId,
    putAdminGroupsUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **putAdminGroupsUpdateRequest** | **PutAdminGroupsUpdateRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

