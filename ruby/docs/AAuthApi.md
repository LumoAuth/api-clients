# LumoAuthApiClient::AAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_agent**](AAuthApi.md#authorize_agent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page. |
| [**get_agent_jwks**](AAuthApi.md#get_agent_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint |
| [**get_agent_metadata**](AAuthApi.md#get_agent_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents. |
| [**get_agent_metadata_by_id**](AAuthApi.md#get_agent_metadata_by_id) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata |
| [**get_issuer_jwks**](AAuthApi.md#get_issuer_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth. |
| [**get_issuer_metadata**](AAuthApi.md#get_issuer_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant. |
| [**get_resource_jwks**](AAuthApi.md#get_resource_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint |
| [**get_resource_metadata**](AAuthApi.md#get_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3) |
| [**get_resource_metadata_by_id**](AAuthApi.md#get_resource_metadata_by_id) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata |
| [**issue_agent_token**](AAuthApi.md#issue_agent_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint |
| [**issue_delegate_token**](AAuthApi.md#issue_delegate_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate. |
| [**issue_platform_token**](AAuthApi.md#issue_platform_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token |  |
| [**issue_resource_token**](AAuthApi.md#issue_resource_token) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6) |
| [**revoke_agent_token**](AAuthApi.md#revoke_agent_token) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token. |
| [**verify_auth_token**](AAuthApi.md#verify_auth_token) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint. |
| [**verify_resource_token**](AAuthApi.md#verify_resource_token) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens). |


## authorize_agent

> authorize_agent(org_id)

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user's browser to its authorization page.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Agent Auth Endpoint - redirects to user consent page.
  api_instance.authorize_agent(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->authorize_agent: #{e}"
end
```

#### Using the authorize_agent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_agent_with_http_info(org_id)

```ruby
begin
  # Agent Auth Endpoint - redirects to user consent page.
  data, status_code, headers = api_instance.authorize_agent_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->authorize_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_agent_jwks

> <JwksResponse> get_agent_jwks(org_id, agent_id)

Agent JWKS endpoint

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Agent JWKS endpoint
  result = api_instance.get_agent_jwks(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_jwks: #{e}"
end
```

#### Using the get_agent_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JwksResponse>, Integer, Hash)> get_agent_jwks_with_http_info(org_id, agent_id)

```ruby
begin
  # Agent JWKS endpoint
  data, status_code, headers = api_instance.get_agent_jwks_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JwksResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_agent_metadata

> Array&lt;Object&gt; get_agent_metadata(org_id)

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
  result = api_instance.get_agent_metadata(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_metadata: #{e}"
end
```

#### Using the get_agent_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> get_agent_metadata_with_http_info(org_id)

```ruby
begin
  # Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
  data, status_code, headers = api_instance.get_agent_metadata_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**Array&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_agent_metadata_by_id

> Object get_agent_metadata_by_id(org_id, agent_id)

Individual Agent Metadata

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Individual Agent Metadata
  result = api_instance.get_agent_metadata_by_id(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_metadata_by_id: #{e}"
end
```

#### Using the get_agent_metadata_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_agent_metadata_by_id_with_http_info(org_id, agent_id)

```ruby
begin
  # Individual Agent Metadata
  data, status_code, headers = api_instance.get_agent_metadata_by_id_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_agent_metadata_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuer_jwks

> <JwksResponse> get_issuer_jwks(org_id)

Auth Server JWKS endpoint for AAuth.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Auth Server JWKS endpoint for AAuth.
  result = api_instance.get_issuer_jwks(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_issuer_jwks: #{e}"
end
```

#### Using the get_issuer_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JwksResponse>, Integer, Hash)> get_issuer_jwks_with_http_info(org_id)

```ruby
begin
  # Auth Server JWKS endpoint for AAuth.
  data, status_code, headers = api_instance.get_issuer_jwks_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JwksResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_issuer_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuer_metadata

> <GetIssuerMetadataResponse> get_issuer_metadata(org_id)

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
  result = api_instance.get_issuer_metadata(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_issuer_metadata: #{e}"
end
```

#### Using the get_issuer_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIssuerMetadataResponse>, Integer, Hash)> get_issuer_metadata_with_http_info(org_id)

```ruby
begin
  # Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
  data, status_code, headers = api_instance.get_issuer_metadata_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIssuerMetadataResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_issuer_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_jwks

> <JwksResponse> get_resource_jwks(org_id, resource_id)

Resource JWKS endpoint

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
resource_id = 'resource_id_example' # String | 

begin
  # Resource JWKS endpoint
  result = api_instance.get_resource_jwks(org_id, resource_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_jwks: #{e}"
end
```

#### Using the get_resource_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JwksResponse>, Integer, Hash)> get_resource_jwks_with_http_info(org_id, resource_id)

```ruby
begin
  # Resource JWKS endpoint
  data, status_code, headers = api_instance.get_resource_jwks_with_http_info(org_id, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JwksResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_id** | **String** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_metadata

> Array&lt;Object&gt; get_resource_metadata(org_id)

Resource Metadata (Section 8.3)

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 

begin
  # Resource Metadata (Section 8.3)
  result = api_instance.get_resource_metadata(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_metadata: #{e}"
end
```

#### Using the get_resource_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> get_resource_metadata_with_http_info(org_id)

```ruby
begin
  # Resource Metadata (Section 8.3)
  data, status_code, headers = api_instance.get_resource_metadata_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

**Array&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_metadata_by_id

> Object get_resource_metadata_by_id(org_id, resource_id)

Individual Resource Metadata

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
resource_id = 'resource_id_example' # String | 

begin
  # Individual Resource Metadata
  result = api_instance.get_resource_metadata_by_id(org_id, resource_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_metadata_by_id: #{e}"
end
```

#### Using the get_resource_metadata_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_resource_metadata_by_id_with_http_info(org_id, resource_id)

```ruby
begin
  # Individual Resource Metadata
  data, status_code, headers = api_instance.get_resource_metadata_by_id_with_http_info(org_id, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->get_resource_metadata_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_id** | **String** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## issue_agent_token

> <IssueAgentTokenResponse> issue_agent_token(org_id, issue_agent_token_request)

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server's endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
issue_agent_token_request = LumoAuthApiClient::IssueAgentTokenRequest.new # IssueAgentTokenRequest | 

begin
  # Agent Token Endpoint
  result = api_instance.issue_agent_token(org_id, issue_agent_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_agent_token: #{e}"
end
```

#### Using the issue_agent_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueAgentTokenResponse>, Integer, Hash)> issue_agent_token_with_http_info(org_id, issue_agent_token_request)

```ruby
begin
  # Agent Token Endpoint
  data, status_code, headers = api_instance.issue_agent_token_with_http_info(org_id, issue_agent_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueAgentTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_agent_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **issue_agent_token_request** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md) |  |  |

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## issue_delegate_token

> <IssueDelegateTokenResponse> issue_delegate_token(org_id, issue_delegate_token_request)

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
issue_delegate_token_request = LumoAuthApiClient::IssueDelegateTokenRequest.new # IssueDelegateTokenRequest | 

begin
  # Issue an agent token to a delegate.
  result = api_instance.issue_delegate_token(org_id, issue_delegate_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_delegate_token: #{e}"
end
```

#### Using the issue_delegate_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDelegateTokenResponse>, Integer, Hash)> issue_delegate_token_with_http_info(org_id, issue_delegate_token_request)

```ruby
begin
  # Issue an agent token to a delegate.
  data, status_code, headers = api_instance.issue_delegate_token_with_http_info(org_id, issue_delegate_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDelegateTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_delegate_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **issue_delegate_token_request** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md) |  |  |

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## issue_platform_token

> <IssuePlatformTokenResponse> issue_platform_token(org_id, issue_platform_token_request)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
issue_platform_token_request = LumoAuthApiClient::IssuePlatformTokenRequest.new # IssuePlatformTokenRequest | 

begin
  
  result = api_instance.issue_platform_token(org_id, issue_platform_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_platform_token: #{e}"
end
```

#### Using the issue_platform_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssuePlatformTokenResponse>, Integer, Hash)> issue_platform_token_with_http_info(org_id, issue_platform_token_request)

```ruby
begin
  
  data, status_code, headers = api_instance.issue_platform_token_with_http_info(org_id, issue_platform_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssuePlatformTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_platform_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **issue_platform_token_request** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md) |  |  |

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## issue_resource_token

> <IssueResourceTokenResponse> issue_resource_token(org_id, issue_resource_token_request)

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token binding an agent's request to the resource's identity.  The resource authenticates via HTTP Message Signature using its registered key.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
issue_resource_token_request = LumoAuthApiClient::IssueResourceTokenRequest.new # IssueResourceTokenRequest | 

begin
  # Resource Token Endpoint (Section 6)
  result = api_instance.issue_resource_token(org_id, issue_resource_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_resource_token: #{e}"
end
```

#### Using the issue_resource_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueResourceTokenResponse>, Integer, Hash)> issue_resource_token_with_http_info(org_id, issue_resource_token_request)

```ruby
begin
  # Resource Token Endpoint (Section 6)
  data, status_code, headers = api_instance.issue_resource_token_with_http_info(org_id, issue_resource_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueResourceTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->issue_resource_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **issue_resource_token_request** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md) |  |  |

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_agent_token

> <RevokeAgentTokenResponse> revoke_agent_token(org_id, revoke_agent_token_request)

Revoke an auth token or refresh token.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
revoke_agent_token_request = LumoAuthApiClient::RevokeAgentTokenRequest.new # RevokeAgentTokenRequest | 

begin
  # Revoke an auth token or refresh token.
  result = api_instance.revoke_agent_token(org_id, revoke_agent_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->revoke_agent_token: #{e}"
end
```

#### Using the revoke_agent_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevokeAgentTokenResponse>, Integer, Hash)> revoke_agent_token_with_http_info(org_id, revoke_agent_token_request)

```ruby
begin
  # Revoke an auth token or refresh token.
  data, status_code, headers = api_instance.revoke_agent_token_with_http_info(org_id, revoke_agent_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevokeAgentTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->revoke_agent_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **revoke_agent_token_request** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md) |  |  |

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_auth_token

> <VerifyAuthTokenResponse> verify_auth_token(org_id, verify_auth_token_request)

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent's incoming request matches the      key whose thumbprint is `cnf_jkt` in the response.  IMPORTANT — proof-of-possession is mandatory. A response of `{\"active\": true, ...}` from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent's request was produced with the key that hashes to `cnf_jkt`. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes `pop_required: true` to surface this contract to integrators who only inspect `active`.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
verify_auth_token_request = LumoAuthApiClient::VerifyAuthTokenRequest.new # VerifyAuthTokenRequest | 

begin
  # Auth Token Verification endpoint.
  result = api_instance.verify_auth_token(org_id, verify_auth_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->verify_auth_token: #{e}"
end
```

#### Using the verify_auth_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyAuthTokenResponse>, Integer, Hash)> verify_auth_token_with_http_info(org_id, verify_auth_token_request)

```ruby
begin
  # Auth Token Verification endpoint.
  data, status_code, headers = api_instance.verify_auth_token_with_http_info(org_id, verify_auth_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyAuthTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->verify_auth_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **verify_auth_token_request** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md) |  |  |

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_resource_token

> <VerifyResourceTokenResponse> verify_resource_token(org_id, verify_resource_token_request)

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): AAuthSigned
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AAuthApi.new
org_id = 'org_id_example' # String | 
verify_resource_token_request = LumoAuthApiClient::VerifyResourceTokenRequest.new # VerifyResourceTokenRequest | 

begin
  # Resource Token Verification (for resources to validate their own tokens).
  result = api_instance.verify_resource_token(org_id, verify_resource_token_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->verify_resource_token: #{e}"
end
```

#### Using the verify_resource_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyResourceTokenResponse>, Integer, Hash)> verify_resource_token_with_http_info(org_id, verify_resource_token_request)

```ruby
begin
  # Resource Token Verification (for resources to validate their own tokens).
  data, status_code, headers = api_instance.verify_resource_token_with_http_info(org_id, verify_resource_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyResourceTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AAuthApi->verify_resource_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **verify_resource_token_request** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md) |  |  |

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

