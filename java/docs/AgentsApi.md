# AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**ask**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**attest**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token |
| [**authorizeMcp**](AgentsApi.md#authorizeMcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**createApproval**](AgentsApi.md#createApproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**getAgentCard**](AgentsApi.md#getAgentCard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card |
| [**getApprovalStatus**](AgentsApi.md#getApprovalStatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**getCurrentAgent**](AgentsApi.md#getCurrentAgent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**registerAgent**](AgentsApi.md#registerAgent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent |
| [**verifyAgentCard**](AgentsApi.md#verifyAgentCard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card |


<a id="ask"></a>
# **ask**
> AskResponse ask(orgId, askRequest)

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \&quot;action\&quot;: \&quot;document.read\&quot;,   \&quot;context\&quot;: {\&quot;id\&quot;: \&quot;123\&quot;} }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AskRequest askRequest = new AskRequest(); // AskRequest | 
    try {
      AskResponse result = apiInstance.ask(orgId, askRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#ask");
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
| **askRequest** | [**AskRequest**](AskRequest.md)|  | |

### Return type

[**AskResponse**](AskResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization decision for the requested action. |  -  |
| **400** | Missing required field: action. |  -  |
| **429** | Agent budget exceeded. |  -  |

<a id="attest"></a>
# **attest**
> AttestResponse attest(orgId, agentId, attestRequest)

Workload attestation: exchange a cloud OIDC token for an agent access token

Public (the attestation token is the credential). The agent runtime presents a cloud-issued OIDC token (GitHub Actions, GCP, AWS IRSA, Kubernetes, Azure, SPIFFE, …); its signature is verified against the issuer JWKS and its subject against the agent&#39;s registered workload identity binding. Rate limited per IP and per agent; every rejection is the same generic 401.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    AttestRequest attestRequest = new AttestRequest(); // AttestRequest | 
    try {
      AttestResponse result = apiInstance.attest(orgId, agentId, attestRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#attest");
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
| **agentId** | **String**|  | |
| **attestRequest** | [**AttestRequest**](AttestRequest.md)|  | |

### Return type

[**AttestResponse**](AttestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Attestation accepted: a short-lived (15 minute) LumoAuth access token scoped to the agent&#39;s capabilities. |  -  |
| **400** | invalid_json or missing_attestation_token. |  -  |
| **401** | attestation_rejected — generic for unknown agent, inactive agent / organization, or a token that failed verification. |  -  |
| **403** | access_policy_denied — a conditional access policy refused the agent (reason code included). |  -  |
| **404** | tenant_not_found. |  -  |
| **429** | rate_limit_exceeded (Retry-After: 60). |  -  |

<a id="authorizeMcp"></a>
# **authorizeMcp**
> AuthorizeMcpResponse authorizeMcp(orgId, authorizeMcpRequest)

Per-MCP-tool authorization for the authenticated agent (dx B3).

The real request-path caller of {@see \\McpToolAuthorizationService::canInvoke()} — the piece that connects MCP authorization to agent identity. An MCP gateway/server asks \&quot;may THIS agent invoke &lt;server&gt;/&lt;tool&gt;?\&quot; and gets a Zanzibar-backed allow/deny (tool-level or server-wide grant). Denials and grants are both audited, closing the MCP-authorization audit blind spot.  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \&quot;server_id\&quot;: \&quot;invoices\&quot;, \&quot;tool\&quot;: \&quot;send_payment_reminder\&quot; }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AuthorizeMcpRequest authorizeMcpRequest = new AuthorizeMcpRequest(); // AuthorizeMcpRequest | 
    try {
      AuthorizeMcpResponse result = apiInstance.authorizeMcp(orgId, authorizeMcpRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#authorizeMcp");
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
| **authorizeMcpRequest** | [**AuthorizeMcpRequest**](AuthorizeMcpRequest.md)|  | |

### Return type

[**AuthorizeMcpResponse**](AuthorizeMcpResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Allowed — the agent may invoke the tool. |  -  |
| **403** | Denied — no matching per-tool or server-wide grant. |  -  |
| **400** | server_id and tool are required, or contain forbidden characters. |  -  |

<a id="createApproval"></a>
# **createApproval**
> CreateApprovalResponse createApproval(orgId, createApprovalRequest)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    CreateApprovalRequest createApprovalRequest = new CreateApprovalRequest(); // CreateApprovalRequest | 
    try {
      CreateApprovalResponse result = apiInstance.createApproval(orgId, createApprovalRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#createApproval");
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
| **createApprovalRequest** | [**CreateApprovalRequest**](CreateApprovalRequest.md)|  | |

### Return type

[**CreateApprovalResponse**](CreateApprovalResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Approval request created and push sent. |  -  |
| **202** | User has no push device; an email sign-in fallback link was sent. |  -  |
| **400** | Invalid JSON, task_id, reason, impact, or missing on_behalf_of. |  -  |
| **403** | Caller is not an agent, is cross-tenant, or lacks delegation permission. |  -  |
| **404** | Tenant or target user not found. |  -  |
| **428** | User has no enrolled push device and the email fallback could not be sent. |  -  |
| **429** | Rate limited (per tenant/agent/user). |  -  |

<a id="getAgentCard"></a>
# **getAgentCard**
> SignedAgentCard getAgentCard(orgId, agentId)

Signed A2A agent card

Public. Returns the JWS-signed A2A AgentCard of an active agent that has published an A2A endpoint. Cacheable (Cache-Control: public, max-age&#x3D;300).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      SignedAgentCard result = apiInstance.getAgentCard(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#getAgentCard");
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
| **agentId** | **String**|  | |

### Return type

[**SignedAgentCard**](SignedAgentCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The A2A AgentCard with a detached JWS signature over its JCS-canonical content (signatures[].protected + signature, verifiable against this organization&#39;s JWKS). |  -  |
| **404** | not_found — unknown organization, or the agent is unknown, inactive or has no published A2A card. |  -  |

<a id="getApprovalStatus"></a>
# **getApprovalStatus**
> GetApprovalStatusResponse getApprovalStatus(orgId, token)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String token = "token_example"; // String | 
    try {
      GetApprovalStatusResponse result = apiInstance.getApprovalStatus(orgId, token);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#getApprovalStatus");
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
| **token** | **String**|  | |

### Return type

[**GetApprovalStatusResponse**](GetApprovalStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Current status of the approval request. |  -  |
| **403** | Caller is not an agent, or the request belongs to another agent. |  -  |
| **404** | Tenant or approval request not found. |  -  |

<a id="getCurrentAgent"></a>
# **getCurrentAgent**
> GetCurrentAgentResponse getCurrentAgent(orgId)

Get details about the currently authenticated agent

GET /orgs/{orgId}/api/v1/agents/me

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetCurrentAgentResponse result = apiInstance.getCurrentAgent(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#getCurrentAgent");
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

[**GetCurrentAgentResponse**](GetCurrentAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Identity, capabilities, and workspace of the authenticated principal. |  -  |
| **401** | Unauthorized — no authenticated principal. |  -  |

<a id="registerAgent"></a>
# **registerAgent**
> RegisterAgentResponse registerAgent(orgId)

Register (or re-register) an agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      RegisterAgentResponse result = apiInstance.registerAgent(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#registerAgent");
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

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Registered agent |  -  |

<a id="verifyAgentCard"></a>
# **verifyAgentCard**
> VerifyAgentCardResponse verifyAgentCard(orgId, requestBody)

Verify a signed A2A agent card

Authenticated (user, agent or API key of this organization). The body is the signed card itself, or {\&quot;card\&quot;: {...}, \&quot;jwks_uri\&quot;: \&quot;https://...\&quot;} to verify against an external issuer&#39;s key set (SSRF-guarded); by default the organization&#39;s own JWKS is used.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AgentsApi;

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

    AgentsApi apiInstance = new AgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    Map<String, Object> requestBody = null; // Map<String, Object> | 
    try {
      VerifyAgentCardResponse result = apiInstance.verifyAgentCard(orgId, requestBody);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#verifyAgentCard");
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
| **requestBody** | [**Map&lt;String, Object&gt;**](Object.md)|  | |

### Return type

[**VerifyAgentCardResponse**](VerifyAgentCardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Verification result — 200 for both outcomes. valid&#x3D;true carries signer and card_summary; valid&#x3D;false carries error. |  -  |
| **400** | invalid_request — body is not a JSON agent card. |  -  |
| **403** | Caller does not belong to this organization. |  -  |
| **404** | Unknown organization. |  -  |

