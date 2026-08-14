# LumoAuthApiClient::AgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ask**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**attest**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest |  |
| [**authorize_mcp**](AgentsApi.md#authorize_mcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**create_approval**](AgentsApi.md#create_approval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**get_agent_card**](AgentsApi.md#get_agent_card) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card |  |
| [**get_approval_status**](AgentsApi.md#get_approval_status) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**get_current_agent**](AgentsApi.md#get_current_agent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**register_agent**](AgentsApi.md#register_agent) | **POST** /orgs/{orgId}/api/v1/agents/register |  |
| [**verify_agent_card**](AgentsApi.md#verify_agent_card) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify |  |


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

> attest(org_id, agent_id)



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

begin
  
  api_instance.attest(org_id, agent_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->attest: #{e}"
end
```

#### Using the attest_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> attest_with_http_info(org_id, agent_id)

```ruby
begin
  
  data, status_code, headers = api_instance.attest_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->attest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

> get_agent_card(org_id, agent_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  
  api_instance.get_agent_card(org_id, agent_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->get_agent_card: #{e}"
end
```

#### Using the get_agent_card_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_agent_card_with_http_info(org_id, agent_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_agent_card_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

> register_agent(org_id)



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
  
  api_instance.register_agent(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->register_agent: #{e}"
end
```

#### Using the register_agent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_agent_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.register_agent_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->register_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## verify_agent_card

> verify_agent_card(org_id)



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
  
  api_instance.verify_agent_card(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->verify_agent_card: #{e}"
end
```

#### Using the verify_agent_card_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verify_agent_card_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.verify_agent_card_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AgentsApi->verify_agent_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

