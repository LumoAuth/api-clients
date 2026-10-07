# AdminOrganizationsApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminOrgInvitationsCreate**](#adminorginvitationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization|
|[**adminOrgInvitationsList**](#adminorginvitationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations|
|[**adminOrgInvitationsResend**](#adminorginvitationsresend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation|
|[**adminOrgInvitationsRevoke**](#adminorginvitationsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation|
|[**adminOrgMembersAdd**](#adminorgmembersadd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization|
|[**adminOrgMembersList**](#adminorgmemberslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members|
|[**adminOrgMembersRemove**](#adminorgmembersremove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization|
|[**adminOrgRolesCreate**](#adminorgrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role|
|[**adminOrgRolesDelete**](#adminorgrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role|
|[**adminOrgRolesList**](#adminorgroleslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles|
|[**adminOrganizationsCreate**](#adminorganizationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization|
|[**adminOrganizationsDelete**](#adminorganizationsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization|
|[**adminOrganizationsGet**](#adminorganizationsget) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization|
|[**adminOrganizationsList**](#adminorganizationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations|
|[**patchAdminOrgMembersUpdate**](#patchadminorgmembersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member\&#39;s role or status|
|[**patchAdminOrgRolesUpdate**](#patchadminorgrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role|
|[**patchAdminOrganizationsUpdate**](#patchadminorganizationsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization|
|[**putAdminOrgMembersUpdate**](#putadminorgmembersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member\&#39;s role or status|
|[**putAdminOrgRolesUpdate**](#putadminorgrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role|
|[**putAdminOrganizationsUpdate**](#putadminorganizationsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization|

# **adminOrgInvitationsCreate**
> AdminOrgInvitationsCreateResponse adminOrgInvitationsCreate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgInvitationsCreate(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgInvitationsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Invitation sent |  -  |
|**400** | Invalid role for this organization |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsList**
> AdminOrgInvitationsListResponse adminOrgInvitationsList()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgInvitationsList(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgInvitationsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Invitations |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsResend**
> MessageResponse adminOrgInvitationsResend()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let invId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgInvitationsResend(
    orgId,
    organizationId,
    invId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **invId** | [**string**] |  | defaults to undefined|


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
|**200** | Invitation resent |  -  |
|**404** | Organization or invitation not found |  -  |
|**422** | Unable to resend invitation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsRevoke**
> MessageResponse adminOrgInvitationsRevoke()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let invId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgInvitationsRevoke(
    orgId,
    organizationId,
    invId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **invId** | [**string**] |  | defaults to undefined|


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
|**200** | Invitation revoked |  -  |
|**404** | Organization or invitation not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersAdd**
> AdminOrgMembersAddResponse adminOrgMembersAdd()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgMembersAdd(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgMembersAddResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Member added |  -  |
|**404** | Organization, user or role not found |  -  |
|**409** | User is already a member |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersList**
> AdminOrgMembersListResponse adminOrgMembersList()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgMembersList(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgMembersListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Members |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersRemove**
> MessageResponse adminOrgMembersRemove()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgMembersRemove(
    orgId,
    organizationId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
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
|**200** | Member removed |  -  |
|**404** | Organization or user not found |  -  |
|**422** | Unable to remove member |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesCreate**
> AdminOrgRolesCreateResponse adminOrgRolesCreate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgRolesCreate(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgRolesCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Role created |  -  |
|**404** | Organization not found |  -  |
|**409** | A role with this name or slug already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesDelete**
> MessageResponse adminOrgRolesDelete()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let roleId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgRolesDelete(
    orgId,
    organizationId,
    roleId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
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
|**200** | Role deleted |  -  |
|**404** | Organization or role not found |  -  |
|**422** | Role still in use |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesList**
> AdminOrgRolesListResponse adminOrgRolesList()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrgRolesList(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgRolesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Roles |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsCreate**
> AdminOrganizationsCreateResponse adminOrganizationsCreate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrganizationsCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrganizationsCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Organization created |  -  |
|**409** | Organization already exists or data invalid |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsDelete**
> MessageResponse adminOrganizationsDelete()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrganizationsDelete(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


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
|**200** | Organization deleted |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsGet**
> AdminOrganizationsGetResponse adminOrganizationsGet()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrganizationsGet(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrganizationsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Organization |  -  |
|**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsList**
> AdminOrganizationsListResponse adminOrganizationsList()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminOrganizationsList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrganizationsListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Organizations |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrgMembersUpdate**
> PutAdminOrgMembersUpdateResponse patchAdminOrgMembersUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminOrgMembersUpdate(
    orgId,
    organizationId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminOrgMembersUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated member |  -  |
|**404** | Organization, member or role not found |  -  |
|**422** | Unable to update member role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrgRolesUpdate**
> AdminOrgRolesCreateResponse patchAdminOrgRolesUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let roleId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminOrgRolesUpdate(
    orgId,
    organizationId,
    roleId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **roleId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgRolesCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated role |  -  |
|**404** | Organization or role not found |  -  |
|**422** | Unable to update role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrganizationsUpdate**
> AdminOrganizationsGetResponse patchAdminOrganizationsUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminOrganizationsUpdate(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrganizationsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization |  -  |
|**404** | Organization not found |  -  |
|**409** | Data invalid or conflicts with an existing record |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrgMembersUpdate**
> PutAdminOrgMembersUpdateResponse putAdminOrgMembersUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminOrgMembersUpdate(
    orgId,
    organizationId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminOrgMembersUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated member |  -  |
|**404** | Organization, member or role not found |  -  |
|**422** | Unable to update member role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrgRolesUpdate**
> AdminOrgRolesCreateResponse putAdminOrgRolesUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)
let roleId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminOrgRolesUpdate(
    orgId,
    organizationId,
    roleId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|
| **roleId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrgRolesCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated role |  -  |
|**404** | Organization or role not found |  -  |
|**422** | Unable to update role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrganizationsUpdate**
> AdminOrganizationsGetResponse putAdminOrganizationsUpdate()


### Example

```typescript
import {
    AdminOrganizationsApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminOrganizationsApi(configuration);

let orgId: string; // (default to undefined)
let organizationId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminOrganizationsUpdate(
    orgId,
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **organizationId** | [**string**] |  | defaults to undefined|


### Return type

**AdminOrganizationsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated organization |  -  |
|**404** | Organization not found |  -  |
|**409** | Data invalid or conflicts with an existing record |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

