# LumoAuth.ApiClient.Api.AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AgentsMeToolCalls**](AgentsApi.md#agentsmetoolcalls) | **POST** /orgs/{orgId}/api/v1/agents/me/tool-calls | Report the tool calls that the agent&#39;s host gated |
| [**Ask**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**Attest**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token |
| [**AuthorizeMcp**](AgentsApi.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**CreateApproval**](AgentsApi.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**GetAgentCard**](AgentsApi.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card |
| [**GetApprovalStatus**](AgentsApi.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**GetCurrentAgent**](AgentsApi.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**PollAgentEnrollment**](AgentsApi.md#pollagentenrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments/token | Poll an agent enrollment (no credential) |
| [**RegisterAgent**](AgentsApi.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent |
| [**ReportAgentUsage**](AgentsApi.md#reportagentusage) | **POST** /orgs/{orgId}/api/v1/agents/me/usage | Report the model tokens and cost that the agent used |
| [**StartAgentEnrollment**](AgentsApi.md#startagentenrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments | Start an agent enrollment (no credential) |
| [**VerifyAgentCard**](AgentsApi.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card |

<a id="agentsmetoolcalls"></a>
# **AgentsMeToolCalls**
> AgentsMeToolCallsResponse AgentsMeToolCalls (string orgId, AgentsMeToolCallsRequest agentsMeToolCallsRequest)

Report the tool calls that the agent's host gated

Records each call as an agent.tool_call.reported audit entry, marked as reported by the agent. Send what the host knows after a call: the tool, how the gate decided (allowed or denied by LumoAuth, approved, refused or expired by a person, blocked by the host's own rules) and the outcome. Never send arguments or results: arguments_sha256 identifies the arguments, and an unknown field is refused. Up to 50 calls per report. Agent credentials only; portal test tokens and scope-narrowed tokens are refused. Rate limited per agent.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AgentsMeToolCallsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var agentsMeToolCallsRequest = new AgentsMeToolCallsRequest(); // AgentsMeToolCallsRequest | 

            try
            {
                // Report the tool calls that the agent's host gated
                AgentsMeToolCallsResponse result = apiInstance.AgentsMeToolCalls(orgId, agentsMeToolCallsRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.AgentsMeToolCalls: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AgentsMeToolCallsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Report the tool calls that the agent's host gated
    ApiResponse<AgentsMeToolCallsResponse> response = apiInstance.AgentsMeToolCallsWithHttpInfo(orgId, agentsMeToolCallsRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.AgentsMeToolCallsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **agentsMeToolCallsRequest** | [**AgentsMeToolCallsRequest**](AgentsMeToolCallsRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="ask"></a>
# **Ask**
> AskResponse Ask (string orgId, AskRequest askRequest)

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document:read\",   \"context\": {\"id\": \"123\"} }

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AskExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var askRequest = new AskRequest(); // AskRequest | 

            try
            {
                // Agent-friendly permission check (Natural Language style)
                AskResponse result = apiInstance.Ask(orgId, askRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.Ask: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AskWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Agent-friendly permission check (Natural Language style)
    ApiResponse<AskResponse> response = apiInstance.AskWithHttpInfo(orgId, askRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.AskWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **askRequest** | [**AskRequest**](AskRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="attest"></a>
# **Attest**
> AttestResponse Attest (string orgId, string agentId, AttestRequest attestRequest)

Workload attestation: exchange a cloud OIDC token for an agent access token

Public (the attestation token is the credential). The agent runtime presents a cloud-issued OIDC token (GitHub Actions, GCP, AWS IRSA, Kubernetes, Azure, SPIFFE, …); its signature is verified against the issuer JWKS and its subject against the agent's registered workload identity binding. Rate limited per IP and per agent; every rejection is the same generic 401.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AttestExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var agentId = "agentId_example";  // string | 
            var attestRequest = new AttestRequest(); // AttestRequest | 

            try
            {
                // Workload attestation: exchange a cloud OIDC token for an agent access token
                AttestResponse result = apiInstance.Attest(orgId, agentId, attestRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.Attest: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AttestWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Workload attestation: exchange a cloud OIDC token for an agent access token
    ApiResponse<AttestResponse> response = apiInstance.AttestWithHttpInfo(orgId, agentId, attestRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.AttestWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **agentId** | **string** |  |  |
| **attestRequest** | [**AttestRequest**](AttestRequest.md) |  |  |

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
| **400** | invalid_json, missing_attestation_token, invalid_scope, invalid_dpop_proof, or use_dpop_nonce with a DPoP-Nonce header when the organization requires server nonces. The nonce challenge comes before the attestation token is checked (it stays unspent) and before the budget is charged: resend the same request with a proof that carries the nonce. |  * DPoP-Nonce - Fresh server nonce when the request carried a DPoP proof (RFC 9449 §8). <br>  |
| **401** | attestation_rejected — generic for unknown agent, inactive agent / organization, or a token that failed verification. |  -  |
| **403** | access_policy_denied — a conditional access policy refused the agent (reason code included). |  -  |
| **404** | tenant_not_found. |  -  |
| **429** | rate_limit_exceeded (Retry-After: 60), or budget_exceeded: the agent&#39;s budget is spent (Retry-After: seconds until the spent window ends). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="authorizemcp"></a>
# **AuthorizeMcp**
> AuthorizeMcpResponse AuthorizeMcp (string orgId, AuthorizeMcpRequest authorizeMcpRequest)

Per-MCP-tool authorization for the authenticated agent (dx B3).

An AGENT asks about itself: \"may I invoke <server>/<tool>?\" — with its own credential, before it calls the tool. Zanzibar-backed allow/deny (tool-level or server-wide grant), audited either way.  An MCP SERVER must not use this endpoint: it would have to forward the agent's token (MCP 2026-07-28 forbids token passthrough). Servers call POST /orgs/{orgId}/api/v1/mcp/servers/{serverId}/tools/authorize with their own client-credentials token instead ({@see \\McpAuthorizationController::authorizeTool()}).  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"mcp_0123…\", \"tool\": \"send_payment_reminder\" }

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AuthorizeMcpExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var authorizeMcpRequest = new AuthorizeMcpRequest(); // AuthorizeMcpRequest | 

            try
            {
                // Per-MCP-tool authorization for the authenticated agent (dx B3).
                AuthorizeMcpResponse result = apiInstance.AuthorizeMcp(orgId, authorizeMcpRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.AuthorizeMcp: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AuthorizeMcpWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Per-MCP-tool authorization for the authenticated agent (dx B3).
    ApiResponse<AuthorizeMcpResponse> response = apiInstance.AuthorizeMcpWithHttpInfo(orgId, authorizeMcpRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.AuthorizeMcpWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **authorizeMcpRequest** | [**AuthorizeMcpRequest**](AuthorizeMcpRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="createapproval"></a>
# **CreateApproval**
> CreateApprovalResponse CreateApproval (string orgId, CreateApprovalRequest createApprovalRequest)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class CreateApprovalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var createApprovalRequest = new CreateApprovalRequest(); // CreateApprovalRequest | 

            try
            {
                CreateApprovalResponse result = apiInstance.CreateApproval(orgId, createApprovalRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.CreateApproval: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateApprovalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CreateApprovalResponse> response = apiInstance.CreateApprovalWithHttpInfo(orgId, createApprovalRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.CreateApprovalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **createApprovalRequest** | [**CreateApprovalRequest**](CreateApprovalRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getagentcard"></a>
# **GetAgentCard**
> SignedAgentCard GetAgentCard (string orgId, string agentId)

Signed A2A agent card

Public. Returns the JWS-signed A2A AgentCard of an active agent that has published an A2A endpoint. Cacheable (Cache-Control: public, max-age=300).

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class GetAgentCardExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var agentId = "agentId_example";  // string | 

            try
            {
                // Signed A2A agent card
                SignedAgentCard result = apiInstance.GetAgentCard(orgId, agentId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.GetAgentCard: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAgentCardWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Signed A2A agent card
    ApiResponse<SignedAgentCard> response = apiInstance.GetAgentCardWithHttpInfo(orgId, agentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.GetAgentCardWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **agentId** | **string** |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getapprovalstatus"></a>
# **GetApprovalStatus**
> GetApprovalStatusResponse GetApprovalStatus (string orgId, string token)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class GetApprovalStatusExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var token = "token_example";  // string | 

            try
            {
                GetApprovalStatusResponse result = apiInstance.GetApprovalStatus(orgId, token);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.GetApprovalStatus: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetApprovalStatusWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GetApprovalStatusResponse> response = apiInstance.GetApprovalStatusWithHttpInfo(orgId, token);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.GetApprovalStatusWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **token** | **string** |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getcurrentagent"></a>
# **GetCurrentAgent**
> GetCurrentAgentResponse GetCurrentAgent (string orgId)

Get details about the currently authenticated agent

GET /orgs/{orgId}/api/v1/agents/me

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class GetCurrentAgentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Get details about the currently authenticated agent
                GetCurrentAgentResponse result = apiInstance.GetCurrentAgent(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.GetCurrentAgent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCurrentAgentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get details about the currently authenticated agent
    ApiResponse<GetCurrentAgentResponse> response = apiInstance.GetCurrentAgentWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.GetCurrentAgentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="pollagentenrollment"></a>
# **PollAgentEnrollment**
> PollAgentEnrollmentResponse PollAgentEnrollment (string orgId, PollAgentEnrollmentRequest pollAgentEnrollmentRequest)

Poll an agent enrollment (no credential)

Polled by the setup command with its enrollment code, no faster than the interval (RFC 8628 §3.4 style). While nobody has decided: 400 authorization_pending; polled too fast: 400 slow_down (and the interval grows by 5 seconds); refused: 400 access_denied; after expiry, for an unknown code, or once the result was delivered: 400 expired_token. Approved: 200 with the agent id, once. The enrollment code is not a credential of the agent: the result names the agent, the private key that authenticates it never leaves the machine.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class PollAgentEnrollmentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var pollAgentEnrollmentRequest = new PollAgentEnrollmentRequest(); // PollAgentEnrollmentRequest | 

            try
            {
                // Poll an agent enrollment (no credential)
                PollAgentEnrollmentResponse result = apiInstance.PollAgentEnrollment(orgId, pollAgentEnrollmentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.PollAgentEnrollment: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PollAgentEnrollmentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Poll an agent enrollment (no credential)
    ApiResponse<PollAgentEnrollmentResponse> response = apiInstance.PollAgentEnrollmentWithHttpInfo(orgId, pollAgentEnrollmentRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.PollAgentEnrollmentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **pollAgentEnrollmentRequest** | [**PollAgentEnrollmentRequest**](PollAgentEnrollmentRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="registeragent"></a>
# **RegisterAgent**
> RegisterAgentResponse RegisterAgent (string orgId, RegisterAgentRequest registerAgentRequest)

Register (or re-register) an agent

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class RegisterAgentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var registerAgentRequest = new RegisterAgentRequest(); // RegisterAgentRequest | 

            try
            {
                // Register (or re-register) an agent
                RegisterAgentResponse result = apiInstance.RegisterAgent(orgId, registerAgentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.RegisterAgent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RegisterAgentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Register (or re-register) an agent
    ApiResponse<RegisterAgentResponse> response = apiInstance.RegisterAgentWithHttpInfo(orgId, registerAgentRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.RegisterAgentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **registerAgentRequest** | [**RegisterAgentRequest**](RegisterAgentRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="reportagentusage"></a>
# **ReportAgentUsage**
> ReportAgentUsageResponse ReportAgentUsage (string orgId, AdminAgentsReportUsageRequest adminAgentsReportUsageRequest)

Report the model tokens and cost that the agent used

Adds the reported tokens and cost to the agent's budget windows (current UTC hour, day and month). LumoAuth does not see model calls, so token and cost limits apply only to usage that is reported here or through the Admin API. The report adds no API call and is accepted even when the budget is spent. Agent credentials only; portal test tokens are refused. Rate limited per agent.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class ReportAgentUsageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var adminAgentsReportUsageRequest = new AdminAgentsReportUsageRequest(); // AdminAgentsReportUsageRequest | 

            try
            {
                // Report the model tokens and cost that the agent used
                ReportAgentUsageResponse result = apiInstance.ReportAgentUsage(orgId, adminAgentsReportUsageRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.ReportAgentUsage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ReportAgentUsageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Report the model tokens and cost that the agent used
    ApiResponse<ReportAgentUsageResponse> response = apiInstance.ReportAgentUsageWithHttpInfo(orgId, adminAgentsReportUsageRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.ReportAgentUsageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **adminAgentsReportUsageRequest** | [**AdminAgentsReportUsageRequest**](AdminAgentsReportUsageRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="startagentenrollment"></a>
# **StartAgentEnrollment**
> StartAgentEnrollmentResponse StartAgentEnrollment (string orgId, StartAgentEnrollmentRequest startAgentEnrollmentRequest)

Start an agent enrollment (no credential)

The setup command of a personal agent sends its public key and the capabilities it asks for, and gets a user code to show its owner. A signed-in person with permission to create agents opens verification_uri, types the code, checks the key fingerprint against the one in the terminal, adjusts the checklist and approves; the machine then polls the token endpoint of the enrollment for the agent id. No credential is sent or needed. Text is cleaned like any untrusted text; exactly one public key is accepted. The risk, label and checked members of a capability are the machine's own description: the approval page shows the scope itself, grades it from the scope, and pre-ticks only capabilities that it reads as plain reads. Rate limited per client address and per organization. An organization holds at most 20 waiting requests and one client address at most 3; when a queue is full, a new request replaces a waiting one that nobody has opened on the approval page, and that one then answers expired_token.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class StartAgentEnrollmentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var startAgentEnrollmentRequest = new StartAgentEnrollmentRequest(); // StartAgentEnrollmentRequest | 

            try
            {
                // Start an agent enrollment (no credential)
                StartAgentEnrollmentResponse result = apiInstance.StartAgentEnrollment(orgId, startAgentEnrollmentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.StartAgentEnrollment: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the StartAgentEnrollmentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Start an agent enrollment (no credential)
    ApiResponse<StartAgentEnrollmentResponse> response = apiInstance.StartAgentEnrollmentWithHttpInfo(orgId, startAgentEnrollmentRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.StartAgentEnrollmentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **startAgentEnrollmentRequest** | [**StartAgentEnrollmentRequest**](StartAgentEnrollmentRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifyagentcard"></a>
# **VerifyAgentCard**
> VerifyAgentCardResponse VerifyAgentCard (string orgId, Dictionary<string, Object> requestBody)

Verify a signed A2A agent card

Authenticated (user, agent or API key of this organization). The body is the signed card itself, or {\"card\": {...}, \"jwks_uri\": \"https://...\"} to verify against an external issuer's key set (SSRF-guarded); by default the organization's own JWKS is used.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class VerifyAgentCardExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AgentsApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var requestBody = new Dictionary<string, Object>(); // Dictionary<string, Object> | 

            try
            {
                // Verify a signed A2A agent card
                VerifyAgentCardResponse result = apiInstance.VerifyAgentCard(orgId, requestBody);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AgentsApi.VerifyAgentCard: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyAgentCardWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Verify a signed A2A agent card
    ApiResponse<VerifyAgentCardResponse> response = apiInstance.VerifyAgentCardWithHttpInfo(orgId, requestBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AgentsApi.VerifyAgentCardWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **requestBody** | [**Dictionary&lt;string, Object&gt;**](Object.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

