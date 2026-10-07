# WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAuthorizationServerMetadata**](WellKnownApi.md#getAuthorizationServerMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414) |
| [**getJwks**](WellKnownApi.md#getJwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517) |
| [**getOpenidConfiguration**](WellKnownApi.md#getOpenidConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0) |
| [**getSsfConfiguration**](WellKnownApi.md#getSsfConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata |


<a id="getAuthorizationServerMetadata"></a>
# **getAuthorizationServerMetadata**
> AuthorizationServerMetadata getAuthorizationServerMetadata(orgId)

OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age&#x3D;3600). Endpoint URLs are rewritten to the organization&#39;s custom domain when one is active.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AuthorizationServerMetadata result = apiInstance.getAuthorizationServerMetadata(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getAuthorizationServerMetadata");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**AuthorizationServerMetadata**](AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization server metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri (organization settings). |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

<a id="getJwks"></a>
# **getJwks**
> JsonWebKeySet getJwks(orgId)

JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age&#x3D;3600).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      JsonWebKeySet result = apiInstance.getJwks(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getJwks");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**JsonWebKeySet**](JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | JWK Set. Each key is an RSA (n, e) or EC (crv, x, y) public JWK with kid, use&#x3D;sig and alg. |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

<a id="getOpenidConfiguration"></a>
# **getOpenidConfiguration**
> OpenIdConfiguration getOpenidConfiguration(orgId)

OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age&#x3D;3600). Endpoint URLs are rewritten to the organization&#39;s custom domain when one is active.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      OpenIdConfiguration result = apiInstance.getOpenidConfiguration(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getOpenidConfiguration");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OpenID Provider metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri and a tenant acr_values_supported override (organization settings). |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

<a id="getSsfConfiguration"></a>
# **getSsfConfiguration**
> GetSsfConfigurationResponse getSsfConfiguration(orgId)

SSF transmitter configuration metadata

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetSsfConfigurationResponse result = apiInstance.getSsfConfiguration(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getSsfConfiguration");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**GetSsfConfigurationResponse**](GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transmitter configuration |  -  |
| **404** | Tenant not found |  -  |

