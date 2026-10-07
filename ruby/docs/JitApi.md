# LumoAuthApiClient::JitApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_request**](JitApi.md#approve_request) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth). |
| [**complete_task**](JitApi.md#complete_task) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources. |
| [**create_task**](JitApi.md#create_task) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent. |
| [**deny_request**](JitApi.md#deny_request) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth). |
| [**evaluate_task**](JitApi.md#evaluate_task) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task. |
| [**get_request_status**](JitApi.md#get_request_status) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request. |
| [**get_request_token**](JitApi.md#get_request_token) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token. |
| [**list_pending_requests**](JitApi.md#list_pending_requests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant. |
| [**request_permission**](JitApi.md#request_permission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details. |


## approve_request

> <ApproveRequestResponse> approve_request(org_id, request_id, opts)

HITL: Approve a pending JIT request (requires user auth).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
request_id = 'request_id_example' # String | 
opts = {
  approve_request_request: LumoAuthApiClient::ApproveRequestRequest.new # ApproveRequestRequest | 
}

begin
  # HITL: Approve a pending JIT request (requires user auth).
  result = api_instance.approve_request(org_id, request_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->approve_request: #{e}"
end
```

#### Using the approve_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApproveRequestResponse>, Integer, Hash)> approve_request_with_http_info(org_id, request_id, opts)

```ruby
begin
  # HITL: Approve a pending JIT request (requires user auth).
  data, status_code, headers = api_instance.approve_request_with_http_info(org_id, request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApproveRequestResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->approve_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_id** | **String** |  |  |
| **approve_request_request** | [**ApproveRequestRequest**](ApproveRequestRequest.md) |  | [optional] |

### Return type

[**ApproveRequestResponse**](ApproveRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## complete_task

> <CompleteTaskResponse> complete_task(org_id, task_id)

Complete a task and cleanup resources.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
task_id = 'task_id_example' # String | 

begin
  # Complete a task and cleanup resources.
  result = api_instance.complete_task(org_id, task_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->complete_task: #{e}"
end
```

#### Using the complete_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompleteTaskResponse>, Integer, Hash)> complete_task_with_http_info(org_id, task_id)

```ruby
begin
  # Complete a task and cleanup resources.
  data, status_code, headers = api_instance.complete_task_with_http_info(org_id, task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompleteTaskResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->complete_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **task_id** | **String** |  |  |

### Return type

[**CompleteTaskResponse**](CompleteTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_task

> <CreateTaskResponse> create_task(org_id, opts)

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions. This limits the \"blast radius\" of any potential compromise.  Request body: {   \"name\": \"Research Task #123\",           // Optional: human-readable name   \"type\": \"research\",                     // Optional: task type for categorization   \"parent_task_id\": \"task_abc123\",        // Optional: for nested agent chains   \"on_behalf_of\": \"user@example.com\"      // Optional: delegation context }

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
opts = {
  create_task_request: LumoAuthApiClient::CreateTaskRequest.new # CreateTaskRequest | 
}

begin
  # Create a new ephemeral task/persona for an agent.
  result = api_instance.create_task(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->create_task: #{e}"
end
```

#### Using the create_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTaskResponse>, Integer, Hash)> create_task_with_http_info(org_id, opts)

```ruby
begin
  # Create a new ephemeral task/persona for an agent.
  data, status_code, headers = api_instance.create_task_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTaskResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->create_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_task_request** | [**CreateTaskRequest**](CreateTaskRequest.md) |  | [optional] |

### Return type

[**CreateTaskResponse**](CreateTaskResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deny_request

> <DenyRequestResponse> deny_request(org_id, request_id, opts)

HITL: Deny a pending JIT request (requires user auth).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
request_id = 'request_id_example' # String | 
opts = {
  deny_request_request: LumoAuthApiClient::DenyRequestRequest.new # DenyRequestRequest | 
}

begin
  # HITL: Deny a pending JIT request (requires user auth).
  result = api_instance.deny_request(org_id, request_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->deny_request: #{e}"
end
```

#### Using the deny_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DenyRequestResponse>, Integer, Hash)> deny_request_with_http_info(org_id, request_id, opts)

```ruby
begin
  # HITL: Deny a pending JIT request (requires user auth).
  data, status_code, headers = api_instance.deny_request_with_http_info(org_id, request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DenyRequestResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->deny_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_id** | **String** |  |  |
| **deny_request_request** | [**DenyRequestRequest**](DenyRequestRequest.md) |  | [optional] |

### Return type

[**DenyRequestResponse**](DenyRequestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## evaluate_task

> Object evaluate_task(org_id, task_id)

CAEP: Trigger continuous access evaluation for a task.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
task_id = 'task_id_example' # String | 

begin
  # CAEP: Trigger continuous access evaluation for a task.
  result = api_instance.evaluate_task(org_id, task_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->evaluate_task: #{e}"
end
```

#### Using the evaluate_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> evaluate_task_with_http_info(org_id, task_id)

```ruby
begin
  # CAEP: Trigger continuous access evaluation for a task.
  data, status_code, headers = api_instance.evaluate_task_with_http_info(org_id, task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->evaluate_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **task_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_request_status

> <GetRequestStatusResponse> get_request_status(org_id, request_id)

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
request_id = 'request_id_example' # String | 

begin
  # Get the status of a JIT permission request.
  result = api_instance.get_request_status(org_id, request_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->get_request_status: #{e}"
end
```

#### Using the get_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRequestStatusResponse>, Integer, Hash)> get_request_status_with_http_info(org_id, request_id)

```ruby
begin
  # Get the status of a JIT permission request.
  data, status_code, headers = api_instance.get_request_status_with_http_info(org_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRequestStatusResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->get_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_id** | **String** |  |  |

### Return type

[**GetRequestStatusResponse**](GetRequestStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_request_token

> <GetRequestTokenResponse> get_request_token(org_id, request_id)

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
request_id = 'request_id_example' # String | 

begin
  # Exchange an approved JIT request for a downscoped token.
  result = api_instance.get_request_token(org_id, request_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->get_request_token: #{e}"
end
```

#### Using the get_request_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRequestTokenResponse>, Integer, Hash)> get_request_token_with_http_info(org_id, request_id)

```ruby
begin
  # Exchange an approved JIT request for a downscoped token.
  data, status_code, headers = api_instance.get_request_token_with_http_info(org_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRequestTokenResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->get_request_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_id** | **String** |  |  |

### Return type

[**GetRequestTokenResponse**](GetRequestTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pending_requests

> <ListPendingRequestsResponse> list_pending_requests(org_id)

Get pending HITL requests for the tenant.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 

begin
  # Get pending HITL requests for the tenant.
  result = api_instance.list_pending_requests(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->list_pending_requests: #{e}"
end
```

#### Using the list_pending_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPendingRequestsResponse>, Integer, Hash)> list_pending_requests_with_http_info(org_id)

```ruby
begin
  # Get pending HITL requests for the tenant.
  data, status_code, headers = api_instance.list_pending_requests_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPendingRequestsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->list_pending_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListPendingRequestsResponse**](ListPendingRequestsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_permission

> <RequestPermissionResponse> request_permission(org_id, request_permission_request)

Request a JIT permission using RFC 9396 authorization_details.

Request body: {   \"task_id\": \"task_abc123\",                     // Required: task context   \"authorization_details\": {                    // Required: RFC 9396 object     \"type\": \"file_access\",     \"actions\": [\"read\"],     \"identifier\": \"report_2024.pdf\"   },   \"justification\": \"Need to analyze Q4 data\",   // Optional: human-readable   \"requested_ttl\": 300,                         // Optional: 5-15 minutes (default 10)   \"callback_url\": \"https://...\"                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::JitApi.new
org_id = 'org_id_example' # String | 
request_permission_request = LumoAuthApiClient::RequestPermissionRequest.new # RequestPermissionRequest | 

begin
  # Request a JIT permission using RFC 9396 authorization_details.
  result = api_instance.request_permission(org_id, request_permission_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->request_permission: #{e}"
end
```

#### Using the request_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RequestPermissionResponse>, Integer, Hash)> request_permission_with_http_info(org_id, request_permission_request)

```ruby
begin
  # Request a JIT permission using RFC 9396 authorization_details.
  data, status_code, headers = api_instance.request_permission_with_http_info(org_id, request_permission_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RequestPermissionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling JitApi->request_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **request_permission_request** | [**RequestPermissionRequest**](RequestPermissionRequest.md) |  |  |

### Return type

[**RequestPermissionResponse**](RequestPermissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

