# AdminEmailApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminEmailTemplatesDelete**](#adminemailtemplatesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used|
|[**adminEmailTemplatesGet**](#adminemailtemplatesget) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)|
|[**adminEmailTemplatesList**](#adminemailtemplateslist) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template|
|[**adminEmailTemplatesPreview**](#adminemailtemplatespreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data|
|[**adminEmailTemplatesUpsert**](#adminemailtemplatesupsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type|
|[**adminEmailTemplatesVariables**](#adminemailtemplatesvariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type|

# **adminEmailTemplatesDelete**
> MessageResponse adminEmailTemplatesDelete()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)
let type: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesDelete(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**string**] |  | defaults to undefined|


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
|**200** | Reverted to default |  -  |
|**404** | Unknown template type, or no custom template exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesGet**
> EmailTemplate adminEmailTemplatesGet()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)
let type: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesGet(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**string**] |  | defaults to undefined|


### Return type

**EmailTemplate**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Template including body_html |  -  |
|**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesList**
> AdminEmailTemplatesListResponse adminEmailTemplatesList()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminEmailTemplatesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Templates without body_html; &#x60;email_templates&#x60; duplicates &#x60;data&#x60; |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesPreview**
> AdminEmailTemplatesPreviewResponse adminEmailTemplatesPreview()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)
let type: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesPreview(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**string**] |  | defaults to undefined|


### Return type

**AdminEmailTemplatesPreviewResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Rendered preview |  -  |
|**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesUpsert**
> EmailTemplate adminEmailTemplatesUpsert()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)
let type: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesUpsert(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**string**] |  | defaults to undefined|


### Return type

**EmailTemplate**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Saved template including body_html |  -  |
|**404** | Unknown template type |  -  |
|**422** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesVariables**
> AdminEmailTemplatesVariablesResponse adminEmailTemplatesVariables()


### Example

```typescript
import {
    AdminEmailApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminEmailApi(configuration);

let orgId: string; // (default to undefined)
let type: string; // (default to undefined)

const { status, data } = await apiInstance.adminEmailTemplatesVariables(
    orgId,
    type
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**string**] |  | defaults to undefined|


### Return type

**AdminEmailTemplatesVariablesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Placeholder to description map |  -  |
|**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

