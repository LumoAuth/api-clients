# AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**agentsMeToolCalls**](AgentsApi.md#agentsMeToolCalls) | **POST** /orgs/{orgId}/api/v1/agents/me/tool-calls | Report the tool calls that the agent&#39;s host gated |
| [**ask**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**attest**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token |
| [**authorizeMcp**](AgentsApi.md#authorizeMcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**createApproval**](AgentsApi.md#createApproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**getAgentCard**](AgentsApi.md#getAgentCard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card |
| [**getApprovalStatus**](AgentsApi.md#getApprovalStatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**getCurrentAgent**](AgentsApi.md#getCurrentAgent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**pollAgentEnrollment**](AgentsApi.md#pollAgentEnrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments/token | Poll an agent enrollment (no credential) |
| [**registerAgent**](AgentsApi.md#registerAgent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent |
| [**reportAgentUsage**](AgentsApi.md#reportAgentUsage) | **POST** /orgs/{orgId}/api/v1/agents/me/usage | Report the model tokens and cost that the agent used |
| [**startAgentEnrollment**](AgentsApi.md#startAgentEnrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments | Start an agent enrollment (no credential) |
| [**verifyAgentCard**](AgentsApi.md#verifyAgentCard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card |


<a id="agentsMeToolCalls"></a>
# **agentsMeToolCalls**
> AgentsMeToolCallsResponse agentsMeToolCalls(orgId, agentsMeToolCallsRequest)

Report the tool calls that the agent&#39;s host gated

Records each call as an agent.tool_call.reported audit entry, marked as reported by the agent. Send what the host knows after a call: the tool, how the gate decided (allowed or denied by LumoAuth, approved, refused or expired by a person, blocked by the host&#39;s own rules) and the outcome. Never send arguments or results: arguments_sha256 identifies the arguments, and an unknown field is refused. Up to 50 calls per report. Agent credentials only; portal test tokens and scope-narrowed tokens are refused. Rate limited per agent.

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
    AgentsMeToolCallsRequest agentsMeToolCallsRequest = new AgentsMeToolCallsRequest(); // AgentsMeToolCallsRequest | 
    try {
      AgentsMeToolCallsResponse result = apiInstance.agentsMeToolCalls(orgId, agentsMeToolCallsRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#agentsMeToolCalls");
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
| **agentsMeToolCallsRequest** | [**AgentsMeToolCallsRequest**](AgentsMeToolCallsRequest.md)|  | |

### Return type

[**AgentsMeToolCallsResponse**](AgentsMeToolCallsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Recorded. |  -  |
| **400** | invalid_request: calls is missing, empty or longer than 50, or a call has an unknown field or an invalid value (the description names it). |  -  |
| **403** | test_token_not_accepted, cross_tenant or insufficient_scope (the token was narrowed with a scope). |  -  |
| **429** | rate_limited: too many reports from this agent. |  -  |

<a id="ask"></a>
# **ask**
> AskResponse ask(orgId, askRequest)

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \&quot;action\&quot;: \&quot;document:read\&quot;,   \&quot;context\&quot;: {\&quot;id\&quot;: \&quot;123\&quot;} }

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
| **400** | Missing required field: action; invalid_request: audit is not denials or always; or invalid_action: an agent wrote the action in the dot form (invoices.read). Agents write &lt;resource&gt;:&lt;action&gt; (invoices:read); a user&#39;s action is a permission slug. |  -  |
| **403** | plan_limit_reached: the Ask API calls that the plan includes for this month are used (plans without overage only). |  -  |
| **429** | budget_exceeded: the agent budget is spent. Retry-After holds the seconds until the spent window starts again. |  -  |

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
| **200** | Attestation accepted: a short-lived (15 minute) LumoAuth access token scoped to the agent&#39;s capabilities, or to the subset named by the optional &#x60;scope&#x60; field of the request body. Sent with a &#x60;DPoP&#x60; header, the token is DPoP-bound (token_type DPoP, cnf.jkt). |  -  |
| **400** | invalid_json or missing_attestation_token. |  -  |
| **401** | attestation_rejected — generic for unknown agent, inactive agent / organization, or a token that failed verification. |  -  |
| **403** | access_policy_denied — a conditional access policy refused the agent (reason code included). |  -  |
| **404** | tenant_not_found. |  -  |
| **429** | rate_limit_exceeded (Retry-After: 60), or budget_exceeded: the agent&#39;s budget is spent (Retry-After: seconds until the spent window ends). |  -  |

<a id="authorizeMcp"></a>
# **authorizeMcp**
> AuthorizeMcpResponse authorizeMcp(orgId, authorizeMcpRequest)

Per-MCP-tool authorization for the authenticated agent (dx B3).

An AGENT asks about itself: \&quot;may I invoke &lt;server&gt;/&lt;tool&gt;?\&quot; — with its own credential, before it calls the tool. Zanzibar-backed allow/deny (tool-level or server-wide grant), audited either way.  An MCP SERVER must not use this endpoint: it would have to forward the agent&#39;s token (MCP 2026-07-28 forbids token passthrough). Servers call POST /orgs/{orgId}/api/v1/mcp/servers/{serverId}/tools/authorize with their own client-credentials token instead ({@see \\McpAuthorizationController::authorizeTool()}).  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \&quot;server_id\&quot;: \&quot;mcp_0123…\&quot;, \&quot;tool\&quot;: \&quot;send_payment_reminder\&quot; }

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
| **400** | server_id and tool are required, or contain forbidden characters, or are too long together. |  -  |
| **404** | unknown_server — server_id is not an active MCP server of this organization. |  -  |
| **429** | budget_exceeded: the agent budget is spent. Retry-After holds the seconds until the spent window starts again. |  -  |

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
| **201** | Approval request created and delivered (see &#x60;delivery&#x60;). |  -  |
| **202** | User has no push device; an email sign-in fallback link was sent. |  -  |
| **400** | Invalid JSON, task_id, reason, impact, expires_in or meta (invalid_meta names the field), or missing on_behalf_of. |  -  |
| **403** | Caller is not an agent, belongs to another organization, presents a scope-narrowed token (insufficient_scope), or lacks delegation permission. |  -  |
| **404** | Organization or target user not found. |  -  |
| **428** | User has no enrolled push device, no approval channel receives the request, and the email fallback could not be sent. |  -  |
| **429** | Rate limited (per organization, agent and user). |  -  |

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
| **429** | rate_limited — too many card requests from this address (Retry-After). |  -  |

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
| **404** | Organization or approval request not found. |  -  |

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

<a id="pollAgentEnrollment"></a>
# **pollAgentEnrollment**
> PollAgentEnrollmentResponse pollAgentEnrollment(orgId, pollAgentEnrollmentRequest)

Poll an agent enrollment (no credential)

Polled by the setup command with its enrollment code, no faster than the interval (RFC 8628 §3.4 style). While nobody has decided: 400 authorization_pending; polled too fast: 400 slow_down (and the interval grows by 5 seconds); refused: 400 access_denied; after expiry, for an unknown code, or once the result was delivered: 400 expired_token. Approved: 200 with the agent id, once. The enrollment code is not a credential of the agent: the result names the agent, the private key that authenticates it never leaves the machine.

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
    PollAgentEnrollmentRequest pollAgentEnrollmentRequest = new PollAgentEnrollmentRequest(); // PollAgentEnrollmentRequest | 
    try {
      PollAgentEnrollmentResponse result = apiInstance.pollAgentEnrollment(orgId, pollAgentEnrollmentRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#pollAgentEnrollment");
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
| **pollAgentEnrollmentRequest** | [**PollAgentEnrollmentRequest**](PollAgentEnrollmentRequest.md)|  | |

### Return type

[**PollAgentEnrollmentResponse**](PollAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Approved. Delivered once; later polls answer expired_token. |  -  |
| **400** | authorization_pending, slow_down, access_denied, expired_token or invalid_request. |  -  |
| **404** | Unknown organization. |  -  |
| **429** | too_many_requests: too many polls from this address (Retry-After). |  -  |

<a id="registerAgent"></a>
# **registerAgent**
> RegisterAgentResponse registerAgent(orgId, registerAgentRequest)

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
    RegisterAgentRequest registerAgentRequest = new RegisterAgentRequest(); // RegisterAgentRequest | 
    try {
      RegisterAgentResponse result = apiInstance.registerAgent(orgId, registerAgentRequest);
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
| **registerAgentRequest** | [**RegisterAgentRequest**](RegisterAgentRequest.md)|  | |

### Return type

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Registered agent |  -  |

<a id="reportAgentUsage"></a>
# **reportAgentUsage**
> ReportAgentUsageResponse reportAgentUsage(orgId, adminAgentsReportUsageRequest)

Report the model tokens and cost that the agent used

Adds the reported tokens and cost to the agent&#39;s budget windows (current UTC hour, day and month). LumoAuth does not see model calls, so token and cost limits apply only to usage that is reported here or through the Admin API. The report adds no API call and is accepted even when the budget is spent. Agent credentials only; portal test tokens are refused. Rate limited per agent.

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
    AdminAgentsReportUsageRequest adminAgentsReportUsageRequest = new AdminAgentsReportUsageRequest(); // AdminAgentsReportUsageRequest | 
    try {
      ReportAgentUsageResponse result = apiInstance.reportAgentUsage(orgId, adminAgentsReportUsageRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#reportAgentUsage");
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
| **adminAgentsReportUsageRequest** | [**AdminAgentsReportUsageRequest**](AdminAgentsReportUsageRequest.md)|  | |

### Return type

[**ReportAgentUsageResponse**](ReportAgentUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Recorded. &#x60;budget&#x60; has the same shape as &#x60;budget_policy&#x60; in UserInfo; &#x60;exhausted: true&#x60; means that the next metered call gets 429. |  -  |
| **400** | invalid_request: tokens or cost_usd is missing, negative, too large or not a number. |  -  |
| **403** | test_token_not_accepted, cross_tenant or insufficient_scope (the token was narrowed with a scope). |  -  |
| **429** | rate_limited: too many reports from this agent. |  -  |

<a id="startAgentEnrollment"></a>
# **startAgentEnrollment**
> StartAgentEnrollmentResponse startAgentEnrollment(orgId, startAgentEnrollmentRequest)

Start an agent enrollment (no credential)

The setup command of a personal agent sends its public key and the capabilities it asks for, and gets a user code to show its owner. A signed-in person with permission to create agents opens verification_uri, types the code, checks the key fingerprint against the one in the terminal, adjusts the checklist and approves; the machine then polls the token endpoint of the enrollment for the agent id. No credential is sent or needed. Text is cleaned like any untrusted text; exactly one public key is accepted. The risk, label and checked members of a capability are the machine&#39;s own description: the approval page shows the scope itself, grades it from the scope, and pre-ticks only capabilities that it reads as plain reads. Rate limited per client address and per organization. An organization holds at most 20 waiting requests and one client address at most 3; when a queue is full, a new request replaces a waiting one that nobody has opened on the approval page, and that one then answers expired_token.

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
    StartAgentEnrollmentRequest startAgentEnrollmentRequest = new StartAgentEnrollmentRequest(); // StartAgentEnrollmentRequest | 
    try {
      StartAgentEnrollmentResponse result = apiInstance.startAgentEnrollment(orgId, startAgentEnrollmentRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AgentsApi#startAgentEnrollment");
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
| **startAgentEnrollmentRequest** | [**StartAgentEnrollmentRequest**](StartAgentEnrollmentRequest.md)|  | |

### Return type

[**StartAgentEnrollmentResponse**](StartAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Enrollment started. Show user_code, verification_uri and key_fingerprint to the person; keep enrollment_code secret and poll with it. |  -  |
| **400** | invalid_request; error_description names the field. |  -  |
| **404** | Unknown organization. |  -  |
| **429** | too_many_requests: rate limited, or every waiting request that could give way is open on the approval page (Retry-After). |  -  |

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

