# TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getConnectionToken**](TokenVaultApi.md#getConnectionToken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection |
| [**listConnections**](TokenVaultApi.md#listConnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use |


<a id="getConnectionToken"></a>
# **getConnectionToken**
> GetConnectionTokenResponse getConnectionToken(orgId, connectionId, getConnectionTokenRequest)

Fetch a live third-party access token for a connection

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {\&quot;user_id\&quot;: \&quot;&lt;uuid or email&gt;\&quot;} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.TokenVaultApi;

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

    TokenVaultApi apiInstance = new TokenVaultApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String connectionId = "connectionId_example"; // String | 
    GetConnectionTokenRequest getConnectionTokenRequest = new GetConnectionTokenRequest(); // GetConnectionTokenRequest | 
    try {
      GetConnectionTokenResponse result = apiInstance.getConnectionToken(orgId, connectionId, getConnectionTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokenVaultApi#getConnectionToken");
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
| **connectionId** | **String**|  | |
| **getConnectionTokenRequest** | [**GetConnectionTokenRequest**](GetConnectionTokenRequest.md)|  | [optional] |

### Return type

[**GetConnectionTokenResponse**](GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The provider access token. |  -  |
| **400** | invalid_user_id. |  -  |
| **403** | agent_token_required, cross_tenant, delegation_not_permitted, agent_not_allowed, delegation_not_allowed or connection_disabled. |  -  |
| **404** | tenant_not_found, connection_not_found or grant_not_found. |  -  |
| **409** | grant_revoked, grant_expired or refresh_failed. |  -  |
| **429** | rate_limited. |  -  |
| **503** | refresh_in_progress (Retry-After: 2) or provider_unavailable. |  -  |

<a id="listConnections"></a>
# **listConnections**
> ListConnectionsResponse listConnections(orgId)

List the outbound connections this agent may use

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.TokenVaultApi;

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

    TokenVaultApi apiInstance = new TokenVaultApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListConnectionsResponse result = apiInstance.listConnections(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokenVaultApi#listConnections");
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

[**ListConnectionsResponse**](ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Connections available to the agent. connections and data hold the same list (data + pagination is the standard list envelope). |  -  |
| **403** | agent_token_required (caller is not an agent) or cross_tenant. |  -  |
| **404** | tenant_not_found. |  -  |

