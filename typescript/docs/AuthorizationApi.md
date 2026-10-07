# AuthorizationApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**checkAbac**](#checkabac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller|
|[**checkAbacBulk**](#checkabacbulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call|
|[**checkAllPermissions**](#checkallpermissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions|
|[**checkAnyPermission**](#checkanypermission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions|
|[**checkPermission**](#checkpermission) | **POST** /api/v1/authz/check | Check one permission|
|[**checkPermissionsBulk**](#checkpermissionsbulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call|
|[**checkRelation**](#checkrelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check|
|[**checkRelationScoped**](#checkrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check|
|[**evaluate**](#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation|
|[**evaluateBatch**](#evaluatebatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations|
|[**expandRelation**](#expandrelation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.|
|[**expandRelationScoped**](#expandrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).|
|[**getMyAttributes**](#getmyattributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller\&#39;s ABAC subject attributes|
|[**getResourceAttributes**](#getresourceattributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource|
|[**listAttributeDefinitions**](#listattributedefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization|
|[**listPermissions**](#listpermissions) | **GET** /api/v1/authz/permissions | List the caller\&#39;s effective permissions|
|[**setResourceAttribute**](#setresourceattribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute|
|[**setUserAttribute**](#setuserattribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute|

# **checkAbac**
> CheckAbacResponse checkAbac()

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.checkAbac(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CheckAbacResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAbacBulk**
> CheckAbacBulkResponse checkAbacBulk()

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.checkAbacBulk(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CheckAbacBulkResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Per-check decisions in request order |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAllPermissions**
> CheckAnyPermissionResponse checkAllPermissions()

POST /api/v1/authz/check-all Body: {   \"permissions\": [\"document.edit\", \"document.publish\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.checkAllPermissions();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CheckAnyPermissionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAnyPermission**
> CheckAnyPermissionResponse checkAnyPermission()

POST /api/v1/authz/check-any Body: {   \"permissions\": [\"document.edit\", \"document.view\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.checkAnyPermission();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CheckAnyPermissionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermission**
> CheckPermissionResponse checkPermission()

POST /api/v1/authz/check Body: {   \"permission\": \"document.edit\",   \"context\": {\"document_id\": 123, \"owner_id\": 456},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — defaults to the caller }  All four check endpoints accept the optional `subject`. Naming a subject other than the caller requires the `authz.check` permission or the `authz:check` scope (403 `insufficient_permissions` otherwise) — see ThirdPartySubjectGuard.

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.checkPermission();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CheckPermissionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermissionsBulk**
> CheckPermissionsBulkResponse checkPermissionsBulk()

POST /api/v1/authz/check-bulk Body: {   \"permissions\": [\"document.edit\", \"document.delete\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.checkPermissionsBulk();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CheckPermissionsBulkResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Per-permission decisions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkRelation**
> CheckRelationResponse checkRelation()

POST /api/v1/authz/zanzibar/check Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\",   \"subject\": \"user:456\" }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.checkRelation();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CheckRelationResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkRelationScoped**
> CheckRelationScopedResponse checkRelationScoped()


### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.checkRelationScoped(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CheckRelationScopedResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluate**
> AuthZenDecision evaluate()

POST /api/v1/authz/v1/evaluation Body: {   \"subject\":  {\"type\": \"user\"|\"agent\", \"id\": \"...\"},   \"action\":   {\"name\": \"...\"},   \"resource\": {\"type\": \"...\", \"id\": \"...\"},   \"context\":  {...} } Response: {\"decision\": true|false, \"context\": {...}?}

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.evaluate();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**AuthZenDecision**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | AuthZEN decision |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateBatch**
> EvaluateBatchResponse evaluateBatch()

POST /api/v1/authz/v1/evaluations Body: {   \"subject\":  {...}?,   // optional defaults, overridden per item   \"action\":   {...}?,   \"resource\": {...}?,   \"context\":  {...}?,   \"evaluations\": [{...}, ...] } Response: {\"evaluations\": [{\"decision\": ...}, ...]} preserving order.

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.evaluateBatch();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**EvaluateBatchResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | One decision per evaluation, in request order |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expandRelation**
> ExpandRelationResponse expandRelation(expandRelationRequest)

POST /api/v1/authz/zanzibar/expand Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\" } Response: {   \"tree\": {     \"type\": \"union\" | \"intersection\" | \"leaf\",     \"object\": \"document:123\",     \"relation\": \"viewer\",     \"children\": [ ...nested nodes... ],     \"subjects\": [ \"user:1\", \"group:2#member\" ]   } }  Expansion always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope) — there is no \"self\" variant.

### Example

```typescript
import {
    AuthorizationApi,
    Configuration,
    ExpandRelationRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let expandRelationRequest: ExpandRelationRequest; //

const { status, data } = await apiInstance.expandRelation(
    expandRelationRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **expandRelationRequest** | **ExpandRelationRequest**|  | |


### Return type

**ExpandRelationResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The userset tree for object#relation. |  -  |
|**400** | Missing object/relation or malformed object identifier. |  -  |
|**403** | insufficient_permissions — expand requires the authz.check permission or the authz:check scope. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expandRelationScoped**
> ExpandRelationResponse expandRelationScoped(expandRelationRequest)

Body: {\"object\": \"document:123\", \"relation\": \"viewer\"} Response: {\"tree\": {\"type\", \"object\", \"relation\", \"children\", \"subjects\"}}

### Example

```typescript
import {
    AuthorizationApi,
    Configuration,
    ExpandRelationRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)
let expandRelationRequest: ExpandRelationRequest; //

const { status, data } = await apiInstance.expandRelationScoped(
    orgId,
    expandRelationRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **expandRelationRequest** | **ExpandRelationRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ExpandRelationResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The userset tree for object#relation. |  -  |
|**400** | Missing object/relation or malformed object identifier. |  -  |
|**403** | insufficient_permissions — expand requires the authz.check permission or the authz:check scope; or the token is for another organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyAttributes**
> GetMyAttributesResponse getMyAttributes()

GET /api/v1/abac/my-attributes

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getMyAttributes(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetMyAttributesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Built-in identity attributes plus trait_&lt;key&gt; entries and tenant-defined custom attributes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceAttributes**
> GetResourceAttributesResponse getResourceAttributes()

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)
let resourceType: string; // (default to undefined)
let resourceId: string; // (default to undefined)

const { status, data } = await apiInstance.getResourceAttributes(
    orgId,
    resourceType,
    resourceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **resourceType** | [**string**] |  | defaults to undefined|
| **resourceId** | [**string**] |  | defaults to undefined|


### Return type

**GetResourceAttributesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Resource attributes keyed by attribute slug |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttributeDefinitions**
> ListAttributeDefinitionsResponse listAttributeDefinitions()

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)
let type: 'user' | 'resource' | 'environment'; // (optional) (default to undefined)

const { status, data } = await apiInstance.listAttributeDefinitions(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**&#39;user&#39; | &#39;resource&#39; | &#39;environment&#39;**]**Array<&#39;user&#39; &#124; &#39;resource&#39; &#124; &#39;environment&#39;>** |  | (optional) defaults to undefined|


### Return type

**ListAttributeDefinitionsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Definitions (tenant-defined and global) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPermissions**
> ListPermissionsResponse listPermissions()

GET /api/v1/authz/permissions

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

const { status, data } = await apiInstance.listPermissions();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**ListPermissionsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Permissions from the user\&#39;s roles (including group-inherited roles). &#x60;permissions&#x60; and &#x60;data&#x60; are identical. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setResourceAttribute**
> SetResourceAttributeResponse setResourceAttribute()

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)
let resourceType: string; // (default to undefined)
let resourceId: string; // (default to undefined)
let attributeSlug: string; // (default to undefined)

const { status, data } = await apiInstance.setResourceAttribute(
    orgId,
    resourceType,
    resourceId,
    attributeSlug
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **resourceType** | [**string**] |  | defaults to undefined|
| **resourceId** | [**string**] |  | defaults to undefined|
| **attributeSlug** | [**string**] |  | defaults to undefined|


### Return type

**SetResourceAttributeResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Stored attribute |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserAttribute**
> SetUserAttributeResponse setUserAttribute()

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

### Example

```typescript
import {
    AuthorizationApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AuthorizationApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let attributeSlug: string; // (default to undefined)

const { status, data } = await apiInstance.setUserAttribute(
    orgId,
    userId,
    attributeSlug
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|
| **attributeSlug** | [**string**] |  | defaults to undefined|


### Return type

**SetUserAttributeResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Stored attribute |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

