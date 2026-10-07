# LumoAuthApiClient::AdminAgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_agents_activate**](AdminAgentsApi.md#admin_agents_activate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent |
| [**admin_agents_agents_disable**](AdminAgentsApi.md#admin_agents_agents_disable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent |
| [**admin_agents_agents_enable**](AdminAgentsApi.md#admin_agents_agents_enable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent |
| [**admin_agents_agents_rotate_key**](AdminAgentsApi.md#admin_agents_agents_rotate_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key |
| [**admin_agents_create**](AdminAgentsApi.md#admin_agents_create) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent |
| [**admin_agents_deactivate**](AdminAgentsApi.md#admin_agents_deactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent |
| [**admin_agents_delete**](AdminAgentsApi.md#admin_agents_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent |
| [**admin_agents_generate_token**](AdminAgentsApi.md#admin_agents_generate_token) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent |
| [**admin_agents_get**](AdminAgentsApi.md#admin_agents_get) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId |
| [**admin_agents_get_scopes**](AdminAgentsApi.md#admin_agents_get_scopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities |
| [**admin_agents_list**](AdminAgentsApi.md#admin_agents_list) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant |
| [**admin_agents_revoke_key**](AdminAgentsApi.md#admin_agents_revoke_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate) |
| [**admin_agents_rotate_credentials**](AdminAgentsApi.md#admin_agents_rotate_credentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials |
| [**admin_agents_set_scopes**](AdminAgentsApi.md#admin_agents_set_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities |
| [**patch_admin_agents_update**](AdminAgentsApi.md#patch_admin_agents_update) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |
| [**put_admin_agents_update**](AdminAgentsApi.md#put_admin_agents_update) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |


## admin_agents_activate

> <AdminAgentsActivateResponse> admin_agents_activate(org_id, agent_id)

Activate an agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Activate an agent
  result = api_instance.admin_agents_activate(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_activate: #{e}"
end
```

#### Using the admin_agents_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsActivateResponse>, Integer, Hash)> admin_agents_activate_with_http_info(org_id, agent_id)

```ruby
begin
  # Activate an agent
  data, status_code, headers = api_instance.admin_agents_activate_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsActivateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_agents_disable

> <AdminAgentsAgentsDisableResponse> admin_agents_agents_disable(org_id, agent_id)

Disable agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Disable agent
  result = api_instance.admin_agents_agents_disable(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_disable: #{e}"
end
```

#### Using the admin_agents_agents_disable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsAgentsDisableResponse>, Integer, Hash)> admin_agents_agents_disable_with_http_info(org_id, agent_id)

```ruby
begin
  # Disable agent
  data, status_code, headers = api_instance.admin_agents_agents_disable_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsAgentsDisableResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_disable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_agents_enable

> <AdminAgentsAgentsEnableResponse> admin_agents_agents_enable(org_id, agent_id)

Enable agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Enable agent
  result = api_instance.admin_agents_agents_enable(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_enable: #{e}"
end
```

#### Using the admin_agents_agents_enable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsAgentsEnableResponse>, Integer, Hash)> admin_agents_agents_enable_with_http_info(org_id, agent_id)

```ruby
begin
  # Enable agent
  data, status_code, headers = api_instance.admin_agents_agents_enable_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsAgentsEnableResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_enable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_agents_rotate_key

> <AdminAgentsAgentsRotateKeyResponse> admin_agents_agents_rotate_key(org_id, agent_id)

Rotate agent API key

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Rotate agent API key
  result = api_instance.admin_agents_agents_rotate_key(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_rotate_key: #{e}"
end
```

#### Using the admin_agents_agents_rotate_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsAgentsRotateKeyResponse>, Integer, Hash)> admin_agents_agents_rotate_key_with_http_info(org_id, agent_id)

```ruby
begin
  # Rotate agent API key
  data, status_code, headers = api_instance.admin_agents_agents_rotate_key_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsAgentsRotateKeyResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_agents_rotate_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_create

> <AdminAgentsCreateResponse> admin_agents_create(org_id, admin_agents_create_request)

Create a new agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
admin_agents_create_request = LumoAuthApiClient::AdminAgentsCreateRequest.new # AdminAgentsCreateRequest | 

begin
  # Create a new agent
  result = api_instance.admin_agents_create(org_id, admin_agents_create_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_create: #{e}"
end
```

#### Using the admin_agents_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsCreateResponse>, Integer, Hash)> admin_agents_create_with_http_info(org_id, admin_agents_create_request)

```ruby
begin
  # Create a new agent
  data, status_code, headers = api_instance.admin_agents_create_with_http_info(org_id, admin_agents_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **admin_agents_create_request** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md) |  |  |

### Return type

[**AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_agents_deactivate

> <AdminAgentsDeactivateResponse> admin_agents_deactivate(org_id, agent_id)

Deactivate an agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Deactivate an agent
  result = api_instance.admin_agents_deactivate(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_deactivate: #{e}"
end
```

#### Using the admin_agents_deactivate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsDeactivateResponse>, Integer, Hash)> admin_agents_deactivate_with_http_info(org_id, agent_id)

```ruby
begin
  # Deactivate an agent
  data, status_code, headers = api_instance.admin_agents_deactivate_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsDeactivateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_deactivate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_delete

> <AdminAgentsDeleteResponse> admin_agents_delete(org_id, agent_id)

Delete an agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Delete an agent
  result = api_instance.admin_agents_delete(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_delete: #{e}"
end
```

#### Using the admin_agents_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsDeleteResponse>, Integer, Hash)> admin_agents_delete_with_http_info(org_id, agent_id)

```ruby
begin
  # Delete an agent
  data, status_code, headers = api_instance.admin_agents_delete_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsDeleteResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsDeleteResponse**](AdminAgentsDeleteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_generate_token

> <AdminAgentsGenerateTokenResponse> admin_agents_generate_token(org_id, agent_id, opts)

Generate a token for the agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 
opts = {
  admin_agents_generate_token_request: LumoAuthApiClient::AdminAgentsGenerateTokenRequest.new # AdminAgentsGenerateTokenRequest | 
}

begin
  # Generate a token for the agent
  result = api_instance.admin_agents_generate_token(org_id, agent_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_generate_token: #{e}"
end
```

#### Using the admin_agents_generate_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsGenerateTokenResponse>, Integer, Hash)> admin_agents_generate_token_with_http_info(org_id, agent_id, opts)

```ruby
begin
  # Generate a token for the agent
  data, status_code, headers = api_instance.admin_agents_generate_token_with_http_info(org_id, agent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsGenerateTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_generate_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **admin_agents_generate_token_request** | [**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md) |  | [optional] |

### Return type

[**AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_agents_get

> <AdminAgentsGetResponse> admin_agents_get(org_id, agent_id)

Get a single agent by ID or agentId

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Get a single agent by ID or agentId
  result = api_instance.admin_agents_get(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_get: #{e}"
end
```

#### Using the admin_agents_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsGetResponse>, Integer, Hash)> admin_agents_get_with_http_info(org_id, agent_id)

```ruby
begin
  # Get a single agent by ID or agentId
  data, status_code, headers = api_instance.admin_agents_get_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_get_scopes

> <AdminAgentsGetScopesResponse> admin_agents_get_scopes(org_id, agent_id)

Get agent scopes/capabilities

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Get agent scopes/capabilities
  result = api_instance.admin_agents_get_scopes(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_get_scopes: #{e}"
end
```

#### Using the admin_agents_get_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsGetScopesResponse>, Integer, Hash)> admin_agents_get_scopes_with_http_info(org_id, agent_id)

```ruby
begin
  # Get agent scopes/capabilities
  data, status_code, headers = api_instance.admin_agents_get_scopes_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsGetScopesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_get_scopes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_list

> <AdminAgentsListResponse> admin_agents_list(org_id)

List all agents in the tenant

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 

begin
  # List all agents in the tenant
  result = api_instance.admin_agents_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_list: #{e}"
end
```

#### Using the admin_agents_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsListResponse>, Integer, Hash)> admin_agents_list_with_http_info(org_id)

```ruby
begin
  # List all agents in the tenant
  data, status_code, headers = api_instance.admin_agents_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_revoke_key

> <AdminAgentsRevokeKeyResponse> admin_agents_revoke_key(org_id, agent_id)

Revoke agent API key (nullify it so it can no longer authenticate)

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Revoke agent API key (nullify it so it can no longer authenticate)
  result = api_instance.admin_agents_revoke_key(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_revoke_key: #{e}"
end
```

#### Using the admin_agents_revoke_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsRevokeKeyResponse>, Integer, Hash)> admin_agents_revoke_key_with_http_info(org_id, agent_id)

```ruby
begin
  # Revoke agent API key (nullify it so it can no longer authenticate)
  data, status_code, headers = api_instance.admin_agents_revoke_key_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsRevokeKeyResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_revoke_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_rotate_credentials

> <AdminAgentsRotateCredentialsResponse> admin_agents_rotate_credentials(org_id, agent_id)

Rotate agent credentials

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 

begin
  # Rotate agent credentials
  result = api_instance.admin_agents_rotate_credentials(org_id, agent_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_rotate_credentials: #{e}"
end
```

#### Using the admin_agents_rotate_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsRotateCredentialsResponse>, Integer, Hash)> admin_agents_rotate_credentials_with_http_info(org_id, agent_id)

```ruby
begin
  # Rotate agent credentials
  data, status_code, headers = api_instance.admin_agents_rotate_credentials_with_http_info(org_id, agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsRotateCredentialsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_rotate_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |

### Return type

[**AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_agents_set_scopes

> <AdminAgentsSetScopesResponse> admin_agents_set_scopes(org_id, agent_id, admin_agents_set_scopes_request)

Update agent scopes/capabilities

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 
admin_agents_set_scopes_request = LumoAuthApiClient::AdminAgentsSetScopesRequest.new # AdminAgentsSetScopesRequest | 

begin
  # Update agent scopes/capabilities
  result = api_instance.admin_agents_set_scopes(org_id, agent_id, admin_agents_set_scopes_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_set_scopes: #{e}"
end
```

#### Using the admin_agents_set_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsSetScopesResponse>, Integer, Hash)> admin_agents_set_scopes_with_http_info(org_id, agent_id, admin_agents_set_scopes_request)

```ruby
begin
  # Update agent scopes/capabilities
  data, status_code, headers = api_instance.admin_agents_set_scopes_with_http_info(org_id, agent_id, admin_agents_set_scopes_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsSetScopesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->admin_agents_set_scopes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **admin_agents_set_scopes_request** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md) |  |  |

### Return type

[**AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_admin_agents_update

> <PutAdminAgentsUpdateResponse> patch_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)

Update an existing agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 
put_admin_agents_update_request = LumoAuthApiClient::PutAdminAgentsUpdateRequest.new # PutAdminAgentsUpdateRequest | 

begin
  # Update an existing agent
  result = api_instance.patch_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->patch_admin_agents_update: #{e}"
end
```

#### Using the patch_admin_agents_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminAgentsUpdateResponse>, Integer, Hash)> patch_admin_agents_update_with_http_info(org_id, agent_id, put_admin_agents_update_request)

```ruby
begin
  # Update an existing agent
  data, status_code, headers = api_instance.patch_admin_agents_update_with_http_info(org_id, agent_id, put_admin_agents_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminAgentsUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->patch_admin_agents_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  |  |

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_admin_agents_update

> <PutAdminAgentsUpdateResponse> put_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)

Update an existing agent

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

api_instance = LumoAuthApiClient::AdminAgentsApi.new
org_id = 'org_id_example' # String | 
agent_id = 'agent_id_example' # String | 
put_admin_agents_update_request = LumoAuthApiClient::PutAdminAgentsUpdateRequest.new # PutAdminAgentsUpdateRequest | 

begin
  # Update an existing agent
  result = api_instance.put_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->put_admin_agents_update: #{e}"
end
```

#### Using the put_admin_agents_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminAgentsUpdateResponse>, Integer, Hash)> put_admin_agents_update_with_http_info(org_id, agent_id, put_admin_agents_update_request)

```ruby
begin
  # Update an existing agent
  data, status_code, headers = api_instance.put_admin_agents_update_with_http_info(org_id, agent_id, put_admin_agents_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminAgentsUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAgentsApi->put_admin_agents_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **agent_id** | **String** |  |  |
| **put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  |  |

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

