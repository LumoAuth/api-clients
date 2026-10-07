# AgentsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ask**](AgentsAPI.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
[**attest**](AgentsAPI.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token
[**authorizeMcp**](AgentsAPI.md#authorizemcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
[**createApproval**](AgentsAPI.md#createapproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals | 
[**getAgentCard**](AgentsAPI.md#getagentcard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card
[**getApprovalStatus**](AgentsAPI.md#getapprovalstatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
[**getCurrentAgent**](AgentsAPI.md#getcurrentagent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
[**registerAgent**](AgentsAPI.md#registeragent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent
[**verifyAgentCard**](AgentsAPI.md#verifyagentcard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card


# **ask**
```swift
    open class func ask(orgId: String, askRequest: AskRequest, completion: @escaping (_ data: AskResponse?, _ error: Error?) -> Void)
```

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document.read\",   \"context\": {\"id\": \"123\"} }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let askRequest = AskRequest(action: "action_example", context: 123) // AskRequest | 

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
let attestRequest = AttestRequest(attestationToken: "attestationToken_example") // AttestRequest | 

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

The real request-path caller of {@see \\McpToolAuthorizationService::canInvoke()} — the piece that connects MCP authorization to agent identity. An MCP gateway/server asks \"may THIS agent invoke <server>/<tool>?\" and gets a Zanzibar-backed allow/deny (tool-level or server-wide grant). Denials and grants are both audited, closing the MCP-authorization audit blind spot.  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"invoices\", \"tool\": \"send_payment_reminder\" }

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
let createApprovalRequest = CreateApprovalRequest(taskId: "taskId_example", reason: "reason_example", impact: "impact_example", onBehalfOf: "onBehalfOf_example", meta: 123) // CreateApprovalRequest | 

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

# **registerAgent**
```swift
    open class func registerAgent(orgId: String, completion: @escaping (_ data: RegisterAgentResponse?, _ error: Error?) -> Void)
```

Register (or re-register) an agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Register (or re-register) an agent
AgentsAPI.registerAgent(orgId: orgId) { (response, error) in
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

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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

