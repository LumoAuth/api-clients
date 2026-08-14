# McpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getProtectedResourceMetadata**](McpApi.md#getProtectedResourceMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | OAuth 2.0 Protected Resource Metadata (RFC 9728) |
| [**getProtectedResourceMetadataRoot**](McpApi.md#getProtectedResourceMetadataRoot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Root-level Protected Resource Metadata |
| [**getServer**](McpApi.md#getServer) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server. |
| [**getServerChallenge**](McpApi.md#getServerChallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint. |
| [**listServers**](McpApi.md#listServers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant. |
| [**postServerChallenge**](McpApi.md#postServerChallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint. |


<a id="getProtectedResourceMetadata"></a>
# **getProtectedResourceMetadata**
> getProtectedResourceMetadata(orgId, serverId)

OAuth 2.0 Protected Resource Metadata (RFC 9728)

Well-known endpoint for MCP servers with path-specific metadata. Example: /.well-known/oauth-protected-resource/mcp/{serverId}  MCP clients MUST support this discovery mechanism per the MCP Authorization spec.

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
      apiInstance.getProtectedResourceMetadata(orgId, serverId);
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="getProtectedResourceMetadataRoot"></a>
# **getProtectedResourceMetadataRoot**
> getProtectedResourceMetadataRoot(orgId)

Root-level Protected Resource Metadata

Fallback well-known endpoint per RFC 9728 when no path-specific metadata exists. Returns metadata for the first active MCP server, or a list of available servers.

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
      apiInstance.getProtectedResourceMetadataRoot(orgId);
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

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
> getServerChallenge(orgId, serverId)

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

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
      apiInstance.getServerChallenge(orgId, serverId);
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

null (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

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
> postServerChallenge(orgId, serverId)

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

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
      apiInstance.postServerChallenge(orgId, serverId);
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

null (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

