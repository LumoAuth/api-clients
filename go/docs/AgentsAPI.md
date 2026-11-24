# \AgentsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AgentsMeToolCalls**](AgentsAPI.md#AgentsMeToolCalls) | **Post** /orgs/{orgId}/api/v1/agents/me/tool-calls | Report the tool calls that the agent&#39;s host gated
[**Ask**](AgentsAPI.md#Ask) | **Post** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style)
[**Attest**](AgentsAPI.md#Attest) | **Post** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token
[**AuthorizeMcp**](AgentsAPI.md#AuthorizeMcp) | **Post** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3).
[**CreateApproval**](AgentsAPI.md#CreateApproval) | **Post** /orgs/{orgId}/api/v1/agents/me/approvals | 
[**GetAgentCard**](AgentsAPI.md#GetAgentCard) | **Get** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card
[**GetApprovalStatus**](AgentsAPI.md#GetApprovalStatus) | **Get** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status | 
[**GetCurrentAgent**](AgentsAPI.md#GetCurrentAgent) | **Get** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent
[**PollAgentEnrollment**](AgentsAPI.md#PollAgentEnrollment) | **Post** /orgs/{orgId}/api/v1/agents/enrollments/token | Poll an agent enrollment (no credential)
[**RegisterAgent**](AgentsAPI.md#RegisterAgent) | **Post** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent
[**ReportAgentUsage**](AgentsAPI.md#ReportAgentUsage) | **Post** /orgs/{orgId}/api/v1/agents/me/usage | Report the model tokens and cost that the agent used
[**StartAgentEnrollment**](AgentsAPI.md#StartAgentEnrollment) | **Post** /orgs/{orgId}/api/v1/agents/enrollments | Start an agent enrollment (no credential)
[**VerifyAgentCard**](AgentsAPI.md#VerifyAgentCard) | **Post** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card



## AgentsMeToolCalls

> AgentsMeToolCallsResponse AgentsMeToolCalls(ctx, orgId).AgentsMeToolCallsRequest(agentsMeToolCallsRequest).Execute()

Report the tool calls that the agent's host gated



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	agentsMeToolCallsRequest := *openapiclient.NewAgentsMeToolCallsRequest() // AgentsMeToolCallsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsMeToolCalls(context.Background(), orgId).AgentsMeToolCallsRequest(agentsMeToolCallsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsMeToolCalls``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsMeToolCalls`: AgentsMeToolCallsResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsMeToolCalls`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAgentsMeToolCallsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **agentsMeToolCallsRequest** | [**AgentsMeToolCallsRequest**](AgentsMeToolCallsRequest.md) |  | 

### Return type

[**AgentsMeToolCallsResponse**](AgentsMeToolCallsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Ask

> AskResponse Ask(ctx, orgId).AskRequest(askRequest).Execute()

Agent-friendly permission check (Natural Language style)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	askRequest := *openapiclient.NewAskRequest() // AskRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.Ask(context.Background(), orgId).AskRequest(askRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.Ask``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Ask`: AskResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.Ask`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAskRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **askRequest** | [**AskRequest**](AskRequest.md) |  | 

### Return type

[**AskResponse**](AskResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Attest

> AttestResponse Attest(ctx, orgId, agentId).AttestRequest(attestRequest).Execute()

Workload attestation: exchange a cloud OIDC token for an agent access token



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	agentId := "agentId_example" // string | 
	attestRequest := *openapiclient.NewAttestRequest("AttestationToken_example") // AttestRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.Attest(context.Background(), orgId, agentId).AttestRequest(attestRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.Attest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Attest`: AttestResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.Attest`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAttestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **attestRequest** | [**AttestRequest**](AttestRequest.md) |  | 

### Return type

[**AttestResponse**](AttestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AuthorizeMcp

> AuthorizeMcpResponse AuthorizeMcp(ctx, orgId).AuthorizeMcpRequest(authorizeMcpRequest).Execute()

Per-MCP-tool authorization for the authenticated agent (dx B3).



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	authorizeMcpRequest := *openapiclient.NewAuthorizeMcpRequest() // AuthorizeMcpRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AuthorizeMcp(context.Background(), orgId).AuthorizeMcpRequest(authorizeMcpRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AuthorizeMcp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AuthorizeMcp`: AuthorizeMcpResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AuthorizeMcp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAuthorizeMcpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **authorizeMcpRequest** | [**AuthorizeMcpRequest**](AuthorizeMcpRequest.md) |  | 

### Return type

[**AuthorizeMcpResponse**](AuthorizeMcpResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateApproval

> CreateApprovalResponse CreateApproval(ctx, orgId).CreateApprovalRequest(createApprovalRequest).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	createApprovalRequest := *openapiclient.NewCreateApprovalRequest() // CreateApprovalRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.CreateApproval(context.Background(), orgId).CreateApprovalRequest(createApprovalRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.CreateApproval``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateApproval`: CreateApprovalResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.CreateApproval`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateApprovalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createApprovalRequest** | [**CreateApprovalRequest**](CreateApprovalRequest.md) |  | 

### Return type

[**CreateApprovalResponse**](CreateApprovalResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAgentCard

> SignedAgentCard GetAgentCard(ctx, orgId, agentId).Execute()

Signed A2A agent card



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.GetAgentCard(context.Background(), orgId, agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.GetAgentCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAgentCard`: SignedAgentCard
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.GetAgentCard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAgentCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SignedAgentCard**](SignedAgentCard.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetApprovalStatus

> GetApprovalStatusResponse GetApprovalStatus(ctx, orgId, token).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	token := "token_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.GetApprovalStatus(context.Background(), orgId, token).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.GetApprovalStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetApprovalStatus`: GetApprovalStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.GetApprovalStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**token** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetApprovalStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GetApprovalStatusResponse**](GetApprovalStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetCurrentAgent

> GetCurrentAgentResponse GetCurrentAgent(ctx, orgId).Execute()

Get details about the currently authenticated agent



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.GetCurrentAgent(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.GetCurrentAgent``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetCurrentAgent`: GetCurrentAgentResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.GetCurrentAgent`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetCurrentAgentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetCurrentAgentResponse**](GetCurrentAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PollAgentEnrollment

> PollAgentEnrollmentResponse PollAgentEnrollment(ctx, orgId).PollAgentEnrollmentRequest(pollAgentEnrollmentRequest).Execute()

Poll an agent enrollment (no credential)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	pollAgentEnrollmentRequest := *openapiclient.NewPollAgentEnrollmentRequest("EnrollmentCode_example") // PollAgentEnrollmentRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.PollAgentEnrollment(context.Background(), orgId).PollAgentEnrollmentRequest(pollAgentEnrollmentRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.PollAgentEnrollment``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PollAgentEnrollment`: PollAgentEnrollmentResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.PollAgentEnrollment`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPollAgentEnrollmentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **pollAgentEnrollmentRequest** | [**PollAgentEnrollmentRequest**](PollAgentEnrollmentRequest.md) |  | 

### Return type

[**PollAgentEnrollmentResponse**](PollAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RegisterAgent

> RegisterAgentResponse RegisterAgent(ctx, orgId).Execute()

Register (or re-register) an agent

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.RegisterAgent(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.RegisterAgent``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RegisterAgent`: RegisterAgentResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.RegisterAgent`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRegisterAgentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReportAgentUsage

> ReportAgentUsageResponse ReportAgentUsage(ctx, orgId).AdminAgentsReportUsageRequest(adminAgentsReportUsageRequest).Execute()

Report the model tokens and cost that the agent used



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	adminAgentsReportUsageRequest := *openapiclient.NewAdminAgentsReportUsageRequest() // AdminAgentsReportUsageRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.ReportAgentUsage(context.Background(), orgId).AdminAgentsReportUsageRequest(adminAgentsReportUsageRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.ReportAgentUsage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ReportAgentUsage`: ReportAgentUsageResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.ReportAgentUsage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiReportAgentUsageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminAgentsReportUsageRequest** | [**AdminAgentsReportUsageRequest**](AdminAgentsReportUsageRequest.md) |  | 

### Return type

[**ReportAgentUsageResponse**](ReportAgentUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StartAgentEnrollment

> StartAgentEnrollmentResponse StartAgentEnrollment(ctx, orgId).StartAgentEnrollmentRequest(startAgentEnrollmentRequest).Execute()

Start an agent enrollment (no credential)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	startAgentEnrollmentRequest := *openapiclient.NewStartAgentEnrollmentRequest("OpenClaw on mac-mini", "Host_example", *openapiclient.NewStartAgentEnrollmentRequestJwks(), []openapiclient.StartAgentEnrollmentRequestCapabilitiesItem{*openapiclient.NewStartAgentEnrollmentRequestCapabilitiesItem("files:read", "Risk_example")}) // StartAgentEnrollmentRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.StartAgentEnrollment(context.Background(), orgId).StartAgentEnrollmentRequest(startAgentEnrollmentRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.StartAgentEnrollment``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StartAgentEnrollment`: StartAgentEnrollmentResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.StartAgentEnrollment`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiStartAgentEnrollmentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **startAgentEnrollmentRequest** | [**StartAgentEnrollmentRequest**](StartAgentEnrollmentRequest.md) |  | 

### Return type

[**StartAgentEnrollmentResponse**](StartAgentEnrollmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyAgentCard

> VerifyAgentCardResponse VerifyAgentCard(ctx, orgId).RequestBody(requestBody).Execute()

Verify a signed A2A agent card



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	requestBody := map[string]interface{}{"key": interface{}(123)} // map[string]interface{} | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.VerifyAgentCard(context.Background(), orgId).RequestBody(requestBody).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.VerifyAgentCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyAgentCard`: VerifyAgentCardResponse
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.VerifyAgentCard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVerifyAgentCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestBody** | **map[string]interface{}** |  | 

### Return type

[**VerifyAgentCardResponse**](VerifyAgentCardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

