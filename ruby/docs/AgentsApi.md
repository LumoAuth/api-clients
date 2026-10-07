# LumoAuthApiClient::AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ask**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**attest**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token |
| [**authorize_mcp**](AgentsApi.md#authorize_mcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**create_approval**](AgentsApi.md#create_approval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**get_agent_card**](AgentsApi.md#get_agent_card) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card |
| [**get_approval_status**](AgentsApi.md#get_approval_status) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**get_current_agent**](AgentsApi.md#get_current_agent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**register_agent**](AgentsApi.md#register_agent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent |
| [**verify_agent_card**](AgentsApi.md#verify_agent_card) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card |


## ask

> <AskResponse> ask(org_id, ask_request)

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document.read\",   \"context\": {\"id\": \"123\"} }

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
ask_request = LumoAuthApiClient::AskRequest.new # AskRequest | 

begin
  # Agent-friendly permission check (Natural Language style)
  result = api_instance.ask(org_id, ask_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->ask: #{e}"
end
```

#### Using the ask_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AskResponse>, Integer, Hash)> ask_with_http_info(org_id, ask_request)

```ruby
begin
  # Agent-friendly permission check (Natural Language style)
  data, status_code, headers = api_instance.ask_with_http_info(org_id, ask_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AskResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->ask_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **ask_request** | [**AskRequest**](AskRequest.md) |  |  |

### Return type

[**AskResponse**](AskResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attest

> <AttestResponse> attest(org_id, agent_id, attest_request)

Workload attestation: exchange a cloud OIDC token for an agent access token

Public (the attestation token is the credential). The agent runtime presents a cloud-issued OIDC token (GitHub Actions, GCP, AWS IRSA, Kubernetes, Azure, SPIFFE, …); its signature is verified against the issuer JWKS and its subject against the agent's registered workload identity binding. Rate limited per IP and per agent; every rejection is the same generic 401.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 
attest_request = LumoAuthApiClient::AttestRequest.new({attestation_token: 'attestation_token_example'}) # AttestRequest | 

begin
  # Workload attestation: exchange a cloud OIDC token for an agent access token
  result = api_instance.attest(org_id, agent_id, attest_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->attest: #{e}"
end
```

#### Using the attest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttestResponse>, Integer, Hash)> attest_with_http_info(org_id, agent_id, attest_request)

```ruby
begin
  # Workload attestation: exchange a cloud OIDC token for an agent access token
  data, status_code, headers = api_instance.attest_with_http_info(org_id, agent_id, attest_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttestResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->attest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **attest_request** | [**AttestRequest**](AttestRequest.md) |  |  |

### Return type

[**AttestResponse**](AttestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authorize_mcp

> <AuthorizeMcpResponse> authorize_mcp(org_id, authorize_mcp_request)

Per-MCP-tool authorization for the authenticated agent (dx B3).

The real request-path caller of {@see \\McpToolAuthorizationService::canInvoke()} — the piece that connects MCP authorization to agent identity. An MCP gateway/server asks \"may THIS agent invoke <server>/<tool>?\" and gets a Zanzibar-backed allow/deny (tool-level or server-wide grant). Denials and grants are both audited, closing the MCP-authorization audit blind spot.  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"invoices\", \"tool\": \"send_payment_reminder\" }

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
authorize_mcp_request = LumoAuthApiClient::AuthorizeMcpRequest.new # AuthorizeMcpRequest | 

begin
  # Per-MCP-tool authorization for the authenticated agent (dx B3).
  result = api_instance.authorize_mcp(org_id, authorize_mcp_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->authorize_mcp: #{e}"
end
```

#### Using the authorize_mcp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizeMcpResponse>, Integer, Hash)> authorize_mcp_with_http_info(org_id, authorize_mcp_request)

```ruby
begin
  # Per-MCP-tool authorization for the authenticated agent (dx B3).
  data, status_code, headers = api_instance.authorize_mcp_with_http_info(org_id, authorize_mcp_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizeMcpResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->authorize_mcp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **authorize_mcp_request** | [**AuthorizeMcpRequest**](AuthorizeMcpRequest.md) |  |  |

### Return type

[**AuthorizeMcpResponse**](AuthorizeMcpResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_approval

> <CreateApprovalResponse> create_approval(org_id, create_approval_request)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
create_approval_request = LumoAuthApiClient::CreateApprovalRequest.new # CreateApprovalRequest | 

begin
  
  result = api_instance.create_approval(org_id, create_approval_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->create_approval: #{e}"
end
```

#### Using the create_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApprovalResponse>, Integer, Hash)> create_approval_with_http_info(org_id, create_approval_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_approval_with_http_info(org_id, create_approval_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApprovalResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->create_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_approval_request** | [**CreateApprovalRequest**](CreateApprovalRequest.md) |  |  |

### Return type

[**CreateApprovalResponse**](CreateApprovalResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_agent_card

> <SignedAgentCard> get_agent_card(org_id, agent_id)

Signed A2A agent card

Public. Returns the JWS-signed A2A AgentCard of an active agent that has published an A2A endpoint. Cacheable (Cache-Control: public, max-age=300).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Signed A2A agent card
  result = api_instance.get_agent_card(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_agent_card: #{e}"
end
```

#### Using the get_agent_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignedAgentCard>, Integer, Hash)> get_agent_card_with_http_info(org_id, agent_id)

```ruby
begin
  # Signed A2A agent card
  data, status_code, headers = api_instance.get_agent_card_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignedAgentCard>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_agent_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**SignedAgentCard**](SignedAgentCard.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_approval_status

> <GetApprovalStatusResponse> get_approval_status(org_id, token)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
token = 'token_example' # String | 

begin
  
  result = api_instance.get_approval_status(org_id, token)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_approval_status: #{e}"
end
```

#### Using the get_approval_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApprovalStatusResponse>, Integer, Hash)> get_approval_status_with_http_info(org_id, token)

```ruby
begin
  
  data, status_code, headers = api_instance.get_approval_status_with_http_info(org_id, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApprovalStatusResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_approval_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **token** | **String** |  |  |

### Return type

[**GetApprovalStatusResponse**](GetApprovalStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_agent

> <GetCurrentAgentResponse> get_current_agent(org_id)

Get details about the currently authenticated agent

GET /orgs/{orgId}/api/v1/agents/me

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 

begin
  # Get details about the currently authenticated agent
  result = api_instance.get_current_agent(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_current_agent: #{e}"
end
```

#### Using the get_current_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCurrentAgentResponse>, Integer, Hash)> get_current_agent_with_http_info(org_id)

```ruby
begin
  # Get details about the currently authenticated agent
  data, status_code, headers = api_instance.get_current_agent_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCurrentAgentResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_current_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetCurrentAgentResponse**](GetCurrentAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_agent

> <RegisterAgentResponse> register_agent(org_id)

Register (or re-register) an agent

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 

begin
  # Register (or re-register) an agent
  result = api_instance.register_agent(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->register_agent: #{e}"
end
```

#### Using the register_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegisterAgentResponse>, Integer, Hash)> register_agent_with_http_info(org_id)

```ruby
begin
  # Register (or re-register) an agent
  data, status_code, headers = api_instance.register_agent_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegisterAgentResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->register_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**RegisterAgentResponse**](RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_agent_card

> <VerifyAgentCardResponse> verify_agent_card(org_id, request_body)

Verify a signed A2A agent card

Authenticated (user, agent or API key of this organization). The body is the signed card itself, or {\"card\": {...}, \"jwks_uri\": \"https://...\"} to verify against an external issuer's key set (SSRF-guarded); by default the organization's own JWKS is used.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Verify a signed A2A agent card
  result = api_instance.verify_agent_card(org_id, request_body)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->verify_agent_card: #{e}"
end
```

#### Using the verify_agent_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyAgentCardResponse>, Integer, Hash)> verify_agent_card_with_http_info(org_id, request_body)

```ruby
begin
  # Verify a signed A2A agent card
  data, status_code, headers = api_instance.verify_agent_card_with_http_info(org_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyAgentCardResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->verify_agent_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**VerifyAgentCardResponse**](VerifyAgentCardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

