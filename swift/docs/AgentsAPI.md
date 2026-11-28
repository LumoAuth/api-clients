# AgentsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentsMeToolCalls**](AgentsAPI.md#agentsmetoolcalls) | **POST** /orgs/{orgId}/api/v1/agents/me/tool-calls | Report the tool calls that the agent&#39;s host gated
[**ask**](AgentsAPI.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
[**attest**](AgentsAPI.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token
[**authorizeMcp**](AgentsAPI.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
[**createApproval**](AgentsAPI.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | 
[**getAgentCard**](AgentsAPI.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card
[**getApprovalStatus**](AgentsAPI.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
[**getCurrentAgent**](AgentsAPI.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
[**pollAgentEnrollment**](AgentsAPI.md#pollagentenrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments/token | Poll an agent enrollment (no credential)
[**registerAgent**](AgentsAPI.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent
[**reportAgentUsage**](AgentsAPI.md#reportagentusage) | **POST** /orgs/{orgId}/api/v1/agents/me/usage | Report the model tokens and cost that the agent used
[**startAgentEnrollment**](AgentsAPI.md#startagentenrollment) | **POST** /orgs/{orgId}/api/v1/agents/enrollments | Start an agent enrollment (no credential)
[**verifyAgentCard**](AgentsAPI.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card


# **agentsMeToolCalls**
```swift
    open class func agentsMeToolCalls(orgId: String, agentsMeToolCallsRequest: AgentsMeToolCallsRequest, completion: @escaping (_ data: AgentsMeToolCallsResponse?, _ error: Error?) -> Void)
```

Report the tool calls that the agent's host gated

Records each call as an agent.tool_call.reported audit entry, marked as reported by the agent. Send what the host knows after a call: the tool, how the gate decided (allowed or denied by LumoAuth, approved, refused or expired by a person, blocked by the host's own rules) and the outcome. Never send arguments or results: arguments_sha256 identifies the arguments, and an unknown field is refused. Up to 50 calls per report. Agent credentials only; portal test tokens and scope-narrowed tokens are refused. Rate limited per agent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentsMeToolCallsRequest = AgentsMeToolCallsRequest(calls: [AgentsMeToolCallsRequestCallsItem(tool: "tool_example", serverId: "serverId_example", decision: "decision_example", outcome: "outcome_example", durationMs: 123, argumentsSha256: "argumentsSha256_example", auditId: "auditId_example", occurredAt: Date(), errorCode: "errorCode_example")]) // AgentsMeToolCallsRequest | 

// Report the tool calls that the agent's host gated
AgentsAPI.agentsMeToolCalls(orgId: orgId, agentsMeToolCallsRequest: agentsMeToolCallsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **agentsMeToolCallsRequest** | [**AgentsMeToolCallsRequest**](AgentsMeToolCallsRequest.md) |  | 

### Return type

[**AgentsMeToolCallsResponse**](AgentsMeToolCallsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ask**
```swift
    open class func ask(orgId: String, askRequest: AskRequest, completion: @escaping (_ data: AskResponse?, _ error: Error?) -> Void)
```

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document:read\",   \"context\": {\"id\": \"123\"} }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let askRequest = AskRequest(action: "action_example", context: 123, audit: "audit_example") // AskRequest | 

// Agent-friendly permission check (Natural Language style)
AgentsAPI.ask(orgId: orgId, askRequest: askRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **askRequest** | [**AskRequest**](AskRequest.md) |  | 

### Return type

[**AskResponse**](AskResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attest**
```swift
    open class func attest(orgId: String, agentId: String, attestRequest: AttestRequest, completion: @escaping (_ data: AttestResponse?, _ error: Error?) -> Void)
```

Workload attestation: exchange a cloud OIDC token for an agent access token

Public (the attestation token is the credential). The agent runtime presents a cloud-issued OIDC token (GitHub Actions, GCP, AWS IRSA, Kubernetes, Azure, SPIFFE, …); its signature is verified against the issuer JWKS and its subject against the agent's registered workload identity binding. Rate limited per IP and per agent; every rejection is the same generic 401.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 
let attestRequest = AttestRequest(attestationToken: "attestationToken_example", scope: AttestRequest_scope()) // AttestRequest | 

// Workload attestation: exchange a cloud OIDC token for an agent access token
AgentsAPI.attest(orgId: orgId, agentId: agentId, attestRequest: attestRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **agentId** | **String** |  | 
 **attestRequest** | [**AttestRequest**](AttestRequest.md) |  | 

### Return type

[**AttestResponse**](AttestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizeMcp**
```swift
    open class func authorizeMcp(orgId: String, authorizeMcpRequest: AuthorizeMcpRequest, completion: @escaping (_ data: AuthorizeMcpResponse?, _ error: Error?) -> Void)
```

Per-MCP-tool authorization for the authenticated agent (dx B3).

An AGENT asks about itself: \"may I invoke <server>/<tool>?\" — with its own credential, before it calls the tool. Zanzibar-backed allow/deny (tool-level or server-wide grant), audited either way.  An MCP SERVER must not use this endpoint: it would have to forward the agent's token (MCP 2026-07-28 forbids token passthrough). Servers call POST /orgs/{orgId}/api/v1/mcp/servers/{serverId}/tools/authorize with their own client-credentials token instead ({@see \\McpAuthorizationController::authorizeTool()}).  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"mcp_0123…\", \"tool\": \"send_payment_reminder\" }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let authorizeMcpRequest = AuthorizeMcpRequest(serverId: "serverId_example", tool: "tool_example") // AuthorizeMcpRequest | 

// Per-MCP-tool authorization for the authenticated agent (dx B3).
AgentsAPI.authorizeMcp(orgId: orgId, authorizeMcpRequest: authorizeMcpRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **authorizeMcpRequest** | [**AuthorizeMcpRequest**](AuthorizeMcpRequest.md) |  | 

### Return type

[**AuthorizeMcpResponse**](AuthorizeMcpResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createApproval**
```swift
    open class func createApproval(orgId: String, createApprovalRequest: CreateApprovalRequest, completion: @escaping (_ data: CreateApprovalResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let createApprovalRequest = CreateApprovalRequest(taskId: "taskId_example", reason: "reason_example", impact: "impact_example", onBehalfOf: "onBehalfOf_example", expiresIn: 123, meta: CreateApprovalRequestMeta(kind: "kind_example", host: "host_example", tool: "tool_example", server: "server_example", capability: "capability_example", risk: "risk_example", why: "why_example", title: "title_example", args: ["args_example"], argumentsSha256: "argumentsSha256_example")) // CreateApprovalRequest | 

AgentsAPI.createApproval(orgId: orgId, createApprovalRequest: createApprovalRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **createApprovalRequest** | [**CreateApprovalRequest**](CreateApprovalRequest.md) |  | 

### Return type

[**CreateApprovalResponse**](CreateApprovalResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentCard**
```swift
    open class func getAgentCard(orgId: String, agentId: String, completion: @escaping (_ data: SignedAgentCard?, _ error: Error?) -> Void)
```

Signed A2A agent card

Public. Returns the JWS-signed A2A AgentCard of an active agent that has published an A2A endpoint. Cacheable (Cache-Control: public, max-age=300).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Signed A2A agent card
AgentsAPI.getAgentCard(orgId: orgId, agentId: agentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **agentId** | **String** |  | 

### Return type

[**SignedAgentCard**](SignedAgentCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApprovalStatus**
```swift
    open class func getApprovalStatus(orgId: String, token: String, completion: @escaping (_ data: GetApprovalStatusResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let token = "token_example" // String | 

AgentsAPI.getApprovalStatus(orgId: orgId, token: token) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **token** | **String** |  | 

### Return type

[**GetApprovalStatusResponse**](GetApprovalStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentAgent**
```swift
    open class func getCurrentAgent(orgId: String, completion: @escaping (_ data: GetCurrentAgentResponse?, _ error: Error?) -> Void)
```

Get details about the currently authenticated agent

GET /orgs/{orgId}/api/v1/agents/me

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get details about the currently authenticated agent
AgentsAPI.getCurrentAgent(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**GetCurrentAgentResponse**](GetCurrentAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pollAgentEnrollment**
```swift
    open class func pollAgentEnrollment(orgId: String, pollAgentEnrollmentRequest: PollAgentEnrollmentRequest, completion: @escaping (_ data: PollAgentEnrollmentResponse?, _ error: Error?) -> Void)
```

Poll an agent enrollment (no credential)

Polled by the setup command with its enrollment code, no faster than the interval (RFC 8628 §3.4 style). While nobody has decided: 400 authorization_pending; polled too fast: 400 slow_down (and the interval grows by 5 seconds); refused: 400 access_denied; after expiry, for an unknown code, or once the result was delivered: 400 expired_token. Approved: 200 with the agent id, once. The enrollment code is not a credential of the agent: the result names the agent, the private key that authenticates it never leaves the machine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let pollAgentEnrollmentRequest = PollAgentEnrollmentRequest(enrollmentCode: "enrollmentCode_example") // PollAgentEnrollmentRequest | 

// Poll an agent enrollment (no credential)
AgentsAPI.pollAgentEnrollment(orgId: orgId, pollAgentEnrollmentRequest: pollAgentEnrollmentRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **pollAgentEnrollmentRequest** | [**PollAgentEnrollmentRequest**](PollAgentEnrollmentRequest.md) |  | 

### Return type

[**PollAgentEnrollmentResponse**](PollAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAgent**
```swift
    open class func registerAgent(orgId: String, registerAgentRequest: RegisterAgentRequest, completion: @escaping (_ data: RegisterAgentResponse?, _ error: Error?) -> Void)
```

Register (or re-register) an agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let registerAgentRequest = RegisterAgentRequest(agent: "TODO", email: "email_example", password: "password_example") // RegisterAgentRequest | 

// Register (or re-register) an agent
AgentsAPI.registerAgent(orgId: orgId, registerAgentRequest: registerAgentRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **registerAgentRequest** | [**RegisterAgentRequest**](RegisterAgentRequest.md) |  | 

### Return type

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportAgentUsage**
```swift
    open class func reportAgentUsage(orgId: String, adminAgentsReportUsageRequest: AdminAgentsReportUsageRequest, completion: @escaping (_ data: ReportAgentUsageResponse?, _ error: Error?) -> Void)
```

Report the model tokens and cost that the agent used

Adds the reported tokens and cost to the agent's budget windows (current UTC hour, day and month). LumoAuth does not see model calls, so token and cost limits apply only to usage that is reported here or through the Admin API. The report adds no API call and is accepted even when the budget is spent. Agent credentials only; portal test tokens are refused. Rate limited per agent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let adminAgentsReportUsageRequest = AdminAgentsReportUsageRequest(tokens: 123, costUsd: 123) // AdminAgentsReportUsageRequest | 

// Report the model tokens and cost that the agent used
AgentsAPI.reportAgentUsage(orgId: orgId, adminAgentsReportUsageRequest: adminAgentsReportUsageRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **adminAgentsReportUsageRequest** | [**AdminAgentsReportUsageRequest**](AdminAgentsReportUsageRequest.md) |  | 

### Return type

[**ReportAgentUsageResponse**](ReportAgentUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startAgentEnrollment**
```swift
    open class func startAgentEnrollment(orgId: String, startAgentEnrollmentRequest: StartAgentEnrollmentRequest, completion: @escaping (_ data: StartAgentEnrollmentResponse?, _ error: Error?) -> Void)
```

Start an agent enrollment (no credential)

The setup command of a personal agent sends its public key and the capabilities it asks for, and gets a user code to show its owner. A signed-in person with permission to create agents opens verification_uri, types the code, checks the key fingerprint against the one in the terminal, adjusts the checklist and approves; the machine then polls the token endpoint of the enrollment for the agent id. No credential is sent or needed. Text is cleaned like any untrusted text; exactly one public key is accepted. The risk, label and checked members of a capability are the machine's own description: the approval page shows the scope itself, grades it from the scope, and pre-ticks only capabilities that it reads as plain reads. Rate limited per client address and per organization. An organization holds at most 20 waiting requests and one client address at most 3; when a queue is full, a new request replaces a waiting one that nobody has opened on the approval page, and that one then answers expired_token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let startAgentEnrollmentRequest = StartAgentEnrollmentRequest(name: "name_example", host: "host_example", hostLabel: "hostLabel_example", jwks: StartAgentEnrollmentRequestJwks(keys: ["TODO"]), capabilities: [StartAgentEnrollmentRequestCapabilitiesItem(scope: "scope_example", risk: "risk_example", label: "label_example", checked: false)], delegation: false, inventory: StartAgentEnrollmentRequestInventory(tools: 123, mcpServers: [StartAgentEnrollmentRequestInventoryMcpServersItem(name: "name_example")])) // StartAgentEnrollmentRequest | 

// Start an agent enrollment (no credential)
AgentsAPI.startAgentEnrollment(orgId: orgId, startAgentEnrollmentRequest: startAgentEnrollmentRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **startAgentEnrollmentRequest** | [**StartAgentEnrollmentRequest**](StartAgentEnrollmentRequest.md) |  | 

### Return type

[**StartAgentEnrollmentResponse**](StartAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAgentCard**
```swift
    open class func verifyAgentCard(orgId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: VerifyAgentCardResponse?, _ error: Error?) -> Void)
```

Verify a signed A2A agent card

Authenticated (user, agent or API key of this organization). The body is the signed card itself, or {\"card\": {...}, \"jwks_uri\": \"https://...\"} to verify against an external issuer's key set (SSRF-guarded); by default the organization's own JWKS is used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Verify a signed A2A agent card
AgentsAPI.verifyAgentCard(orgId: orgId, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

[**VerifyAgentCardResponse**](VerifyAgentCardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

