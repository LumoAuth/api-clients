# AdminAbacApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**abacAttributesCreate**](#abacattributescreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition|
|[**abacAttributesDelete**](#abacattributesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition|
|[**abacAttributesGet**](#abacattributesget) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition|
|[**abacAttributesList**](#abacattributeslist) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions|
|[**abacPoliciesCreate**](#abacpoliciescreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy|
|[**abacPoliciesDelete**](#abacpoliciesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy|
|[**abacPoliciesGet**](#abacpoliciesget) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy|
|[**abacPoliciesList**](#abacpolicieslist) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies|
|[**abacPoliciesToggle**](#abacpoliciestoggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive|
|[**patchAbacAttributesUpdate**](#patchabacattributesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition|
|[**patchAbacPoliciesUpdate**](#patchabacpoliciesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy|
|[**putAbacAttributesUpdate**](#putabacattributesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition|
|[**putAbacPoliciesUpdate**](#putabacpoliciesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy|

# **abacAttributesCreate**
> AbacAttributesCreateResponse abacAttributesCreate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.abacAttributesCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AbacAttributesCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Created |  -  |
|**409** | An attribute with this slug already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesDelete**
> MessageResponse abacAttributesDelete()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.abacAttributesDelete(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


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
|**403** | System attribute definitions cannot be deleted |  -  |
|**404** | Attribute definition not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesGet**
> AbacAttributesGetResponse abacAttributesGet()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.abacAttributesGet(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**AbacAttributesGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Attribute definition |  -  |
|**404** | Attribute definition not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesList**
> AbacAttributesListResponse abacAttributesList()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.abacAttributesList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AbacAttributesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Paginated attribute definitions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesCreate**
> AbacPoliciesCreateResponse abacPoliciesCreate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.abacPoliciesCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AbacPoliciesCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Created |  -  |
|**400** | Invalid effect or policy conditions |  -  |
|**409** | A policy with this slug already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesDelete**
> MessageResponse abacPoliciesDelete()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.abacPoliciesDelete(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


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
|**403** | System policies cannot be deleted |  -  |
|**404** | Policy not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesGet**
> AbacPoliciesGetResponse abacPoliciesGet()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.abacPoliciesGet(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**AbacPoliciesGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Policy |  -  |
|**404** | Policy not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesList**
> AbacPoliciesListResponse abacPoliciesList()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.abacPoliciesList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AbacPoliciesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Paginated policies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesToggle**
> AbacPoliciesToggleResponse abacPoliciesToggle()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.abacPoliciesToggle(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**AbacPoliciesToggleResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Toggled policy |  -  |
|**403** | System policies cannot be modified |  -  |
|**404** | Policy not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAbacAttributesUpdate**
> PutAbacAttributesUpdateResponse patchAbacAttributesUpdate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.patchAbacAttributesUpdate(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PutAbacAttributesUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated |  -  |
|**403** | System attribute definitions cannot be modified |  -  |
|**404** | Attribute definition not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAbacPoliciesUpdate**
> PutAbacPoliciesUpdateResponse patchAbacPoliciesUpdate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.patchAbacPoliciesUpdate(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PutAbacPoliciesUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated |  -  |
|**403** | System policies cannot be modified |  -  |
|**404** | Policy not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAbacAttributesUpdate**
> PutAbacAttributesUpdateResponse putAbacAttributesUpdate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.putAbacAttributesUpdate(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PutAbacAttributesUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated |  -  |
|**403** | System attribute definitions cannot be modified |  -  |
|**404** | Attribute definition not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAbacPoliciesUpdate**
> PutAbacPoliciesUpdateResponse putAbacPoliciesUpdate()


### Example

```typescript
import {
    AdminAbacApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminAbacApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.putAbacPoliciesUpdate(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PutAbacPoliciesUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated |  -  |
|**403** | System policies cannot be modified |  -  |
|**404** | Policy not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

