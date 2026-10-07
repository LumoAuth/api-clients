# WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getAuthorizationServerMetadata**](#getauthorizationservermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414)|
|[**getJwks**](#getjwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517)|
|[**getOpenidConfiguration**](#getopenidconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0)|
|[**getSsfConfiguration**](#getssfconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata|

# **getAuthorizationServerMetadata**
> AuthorizationServerMetadata getAuthorizationServerMetadata()

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization\'s custom domain when one is active.

### Example

```typescript
import {
    WellKnownApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new WellKnownApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getAuthorizationServerMetadata(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AuthorizationServerMetadata**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authorization server metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri (organization settings). |  -  |
|**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwks**
> JsonWebKeySet getJwks()

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

### Example

```typescript
import {
    WellKnownApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new WellKnownApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getJwks(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**JsonWebKeySet**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | JWK Set. Each key is an RSA (n, e) or EC (crv, x, y) public JWK with kid, use&#x3D;sig and alg. |  -  |
|**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenidConfiguration**
> OpenIdConfiguration getOpenidConfiguration()

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization\'s custom domain when one is active.

### Example

```typescript
import {
    WellKnownApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new WellKnownApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getOpenidConfiguration(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**OpenIdConfiguration**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OpenID Provider metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri and a tenant acr_values_supported override (organization settings). |  -  |
|**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSsfConfiguration**
> GetSsfConfigurationResponse getSsfConfiguration()


### Example

```typescript
import {
    WellKnownApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new WellKnownApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getSsfConfiguration(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetSsfConfigurationResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Transmitter configuration |  -  |
|**404** | Tenant not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

