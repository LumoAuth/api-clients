# McpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getProtectedResourceMetadata**](McpApi.md#getProtectedResourceMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728) |
| [**getProtectedResourceMetadataRoot**](McpApi.md#getProtectedResourceMetadataRoot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728) |
| [**getServer**](McpApi.md#getServer) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server. |
| [**getServerChallenge**](McpApi.md#getServerChallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge |
| [**listServers**](McpApi.md#listServers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant. |
| [**postServerChallenge**](McpApi.md#postServerChallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST) |


<a id="getProtectedResourceMetadata"></a>
# **getProtectedResourceMetadata**
> ProtectedResourceMetadata getProtectedResourceMetadata(orgId, serverId)

MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age&#x3D;3600).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String serverId = "serverId_example"; // String | 
    try {
      ProtectedResourceMetadata result = apiInstance.getProtectedResourceMetadata(orgId, serverId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#getProtectedResourceMetadata");
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
| **serverId** | **String**|  | |

### Return type

[**ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Protected resource metadata. scopes_supported only when the server declares scopes; the dpop_* members only when the server requires DPoP-bound tokens. Any additional admin-supplied metadata fields are merged in (they can never override resource, authorization_servers, bearer_methods_supported or scopes_supported). |  -  |
| **400** | not_applicable — the MCP server does not require authorization. |  -  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |

<a id="getProtectedResourceMetadataRoot"></a>
# **getProtectedResourceMetadataRoot**
> GetProtectedResourceMetadataRoot200Response getProtectedResourceMetadataRoot(orgId)

Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age&#x3D;3600).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetProtectedResourceMetadataRoot200Response result = apiInstance.getProtectedResourceMetadataRoot(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#getProtectedResourceMetadataRoot");
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

[**GetProtectedResourceMetadataRoot200Response**](GetProtectedResourceMetadataRoot200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Either a single server&#39;s protected resource metadata (same shape as the per-server endpoint) or a resource list. |  -  |
| **404** | not_found — unknown organization, or no protected MCP servers configured. |  -  |

<a id="getServer"></a>
# **getServer**
> GetServerResponse getServer(orgId, serverId)

REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String serverId = "serverId_example"; // String | 
    try {
      GetServerResponse result = apiInstance.getServer(orgId, serverId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#getServer");
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
| **serverId** | **String**|  | |

### Return type

[**GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A single MCP server with discovery metadata. |  -  |
| **403** | Caller lacks the settings.manage permission. |  -  |
| **404** | Tenant or MCP server not found. |  -  |

<a id="getServerChallenge"></a>
# **getServerChallenge**
> GetServerChallengeResponse getServerChallenge(orgId, serverId)

Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server&#39;s protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String serverId = "serverId_example"; // String | 
    try {
      GetServerChallengeResponse result = apiInstance.getServerChallenge(orgId, serverId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#getServerChallenge");
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
| **serverId** | **String**|  | |

### Return type

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The access token is valid for this MCP server. |  -  |
| **401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
| **403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
| **429** | too_many_requests (Retry-After header). |  -  |

<a id="listServers"></a>
# **listServers**
> ListServersResponse listServers(orgId)

REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListServersResponse result = apiInstance.listServers(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#listServers");
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

[**ListServersResponse**](ListServersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of active MCP servers for the tenant. |  -  |
| **403** | Caller lacks the settings.manage permission. |  -  |
| **404** | Tenant not found. |  -  |

<a id="postServerChallenge"></a>
# **postServerChallenge**
> GetServerChallengeResponse postServerChallenge(orgId, serverId)

Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.McpApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    McpApi apiInstance = new McpApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String serverId = "serverId_example"; // String | 
    try {
      GetServerChallengeResponse result = apiInstance.postServerChallenge(orgId, serverId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling McpApi#postServerChallenge");
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
| **serverId** | **String**|  | |

### Return type

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The access token is valid for this MCP server. |  -  |
| **401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
| **403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
| **429** | too_many_requests (Retry-After header). |  -  |

