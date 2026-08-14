# LumoAuthApiClient::AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_webhooks_create**](AdminWebhooksApi.md#admin_webhooks_create) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a new webhook |
| [**admin_webhooks_delete**](AdminWebhooksApi.md#admin_webhooks_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook |
| [**admin_webhooks_deliveries_list**](AdminWebhooksApi.md#admin_webhooks_deliveries_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent delivery attempts for a webhook. |
| [**admin_webhooks_delivery_replay**](AdminWebhooksApi.md#admin_webhooks_delivery_replay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage |
| [**admin_webhooks_delivery_show**](AdminWebhooksApi.md#admin_webhooks_delivery_show) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a single delivery, including the per-attempt history (the &#x60;attempts&#x60; JSON column) for diagnosis. |
| [**admin_webhooks_events**](AdminWebhooksApi.md#admin_webhooks_events) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | Get available webhook event types |
| [**admin_webhooks_get**](AdminWebhooksApi.md#admin_webhooks_get) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a single webhook by ID |
| [**admin_webhooks_list**](AdminWebhooksApi.md#admin_webhooks_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List all webhooks in the tenant |
| [**admin_webhooks_rotate_secret**](AdminWebhooksApi.md#admin_webhooks_rotate_secret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate webhook secret |
| [**admin_webhooks_test**](AdminWebhooksApi.md#admin_webhooks_test) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Test a webhook by sending a test payload |
| [**admin_webhooks_tunnel_start**](AdminWebhooksApi.md#admin_webhooks_tunnel_start) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start |  |
| [**admin_webhooks_tunnel_stop**](AdminWebhooksApi.md#admin_webhooks_tunnel_stop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop |  |
| [**admin_webhooks_tunnel_stream**](AdminWebhooksApi.md#admin_webhooks_tunnel_stream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream |  |
| [**admin_webhooks_webhooks_disable**](AdminWebhooksApi.md#admin_webhooks_webhooks_disable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable webhook |
| [**admin_webhooks_webhooks_enable**](AdminWebhooksApi.md#admin_webhooks_webhooks_enable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable webhook |
| [**patch_admin_webhooks_update**](AdminWebhooksApi.md#patch_admin_webhooks_update) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook |
| [**put_admin_webhooks_update**](AdminWebhooksApi.md#put_admin_webhooks_update) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook |


## admin_webhooks_create

> admin_webhooks_create(org_id)

Create a new webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a new webhook
  api_instance.admin_webhooks_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_create: #{e}"
end
```

#### Using the admin_webhooks_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_create_with_http_info(org_id)

```ruby
begin
  # Create a new webhook
  data, status_code, headers = api_instance.admin_webhooks_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_create_with_http_info: #{e}"
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


## admin_webhooks_delete

> admin_webhooks_delete(org_id, webhook_id)

Delete a webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Delete a webhook
  api_instance.admin_webhooks_delete(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delete: #{e}"
end
```

#### Using the admin_webhooks_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_delete_with_http_info(org_id, webhook_id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.admin_webhooks_delete_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_deliveries_list

> admin_webhooks_deliveries_list(org_id, webhook_id)

List recent delivery attempts for a webhook.

Optional query params: - status: filter by `pending|success|failed|dead_lettered` - limit: 1–200, default 50

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # List recent delivery attempts for a webhook.
  api_instance.admin_webhooks_deliveries_list(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_deliveries_list: #{e}"
end
```

#### Using the admin_webhooks_deliveries_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_deliveries_list_with_http_info(org_id, webhook_id)

```ruby
begin
  # List recent delivery attempts for a webhook.
  data, status_code, headers = api_instance.admin_webhooks_deliveries_list_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_deliveries_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_delivery_replay

> admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)

Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage

Resets the delivery's failure state but preserves the attempt history, then dispatches a fresh DispatchWebhookMessage that the handler will pick up. Idempotent on already-pending rows.

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 
delivery_id = 'delivery_id_example' # String | 

begin
  # Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
  api_instance.admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_replay: #{e}"
end
```

#### Using the admin_webhooks_delivery_replay_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_delivery_replay_with_http_info(org_id, webhook_id, delivery_id)

```ruby
begin
  # Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
  data, status_code, headers = api_instance.admin_webhooks_delivery_replay_with_http_info(org_id, webhook_id, delivery_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_replay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |
| **delivery_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_delivery_show

> admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)

Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 
delivery_id = 'delivery_id_example' # String | 

begin
  # Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.
  api_instance.admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_show: #{e}"
end
```

#### Using the admin_webhooks_delivery_show_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_delivery_show_with_http_info(org_id, webhook_id, delivery_id)

```ruby
begin
  # Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.
  data, status_code, headers = api_instance.admin_webhooks_delivery_show_with_http_info(org_id, webhook_id, delivery_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |
| **delivery_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_events

> admin_webhooks_events(org_id)

Get available webhook event types

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 

begin
  # Get available webhook event types
  api_instance.admin_webhooks_events(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_events: #{e}"
end
```

#### Using the admin_webhooks_events_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_events_with_http_info(org_id)

```ruby
begin
  # Get available webhook event types
  data, status_code, headers = api_instance.admin_webhooks_events_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_events_with_http_info: #{e}"
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


## admin_webhooks_get

> admin_webhooks_get(org_id, webhook_id)

Get a single webhook by ID

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Get a single webhook by ID
  api_instance.admin_webhooks_get(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_get: #{e}"
end
```

#### Using the admin_webhooks_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_get_with_http_info(org_id, webhook_id)

```ruby
begin
  # Get a single webhook by ID
  data, status_code, headers = api_instance.admin_webhooks_get_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_list

> admin_webhooks_list(org_id)

List all webhooks in the tenant

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 

begin
  # List all webhooks in the tenant
  api_instance.admin_webhooks_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_list: #{e}"
end
```

#### Using the admin_webhooks_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_list_with_http_info(org_id)

```ruby
begin
  # List all webhooks in the tenant
  data, status_code, headers = api_instance.admin_webhooks_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_list_with_http_info: #{e}"
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


## admin_webhooks_rotate_secret

> admin_webhooks_rotate_secret(org_id, webhook_id)

Rotate webhook secret

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Rotate webhook secret
  api_instance.admin_webhooks_rotate_secret(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_rotate_secret: #{e}"
end
```

#### Using the admin_webhooks_rotate_secret_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_rotate_secret_with_http_info(org_id, webhook_id)

```ruby
begin
  # Rotate webhook secret
  data, status_code, headers = api_instance.admin_webhooks_rotate_secret_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_rotate_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_test

> admin_webhooks_test(org_id, webhook_id)

Test a webhook by sending a test payload

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Test a webhook by sending a test payload
  api_instance.admin_webhooks_test(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_test: #{e}"
end
```

#### Using the admin_webhooks_test_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_test_with_http_info(org_id, webhook_id)

```ruby
begin
  # Test a webhook by sending a test payload
  data, status_code, headers = api_instance.admin_webhooks_test_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_tunnel_start

> admin_webhooks_tunnel_start(org_id)



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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.admin_webhooks_tunnel_start(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_start: #{e}"
end
```

#### Using the admin_webhooks_tunnel_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_tunnel_start_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_webhooks_tunnel_start_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_start_with_http_info: #{e}"
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


## admin_webhooks_tunnel_stop

> admin_webhooks_tunnel_stop(org_id, webhook_id)



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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  
  api_instance.admin_webhooks_tunnel_stop(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stop: #{e}"
end
```

#### Using the admin_webhooks_tunnel_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_tunnel_stop_with_http_info(org_id, webhook_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_webhooks_tunnel_stop_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_tunnel_stream

> admin_webhooks_tunnel_stream(org_id, webhook_id)



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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  
  api_instance.admin_webhooks_tunnel_stream(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stream: #{e}"
end
```

#### Using the admin_webhooks_tunnel_stream_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_tunnel_stream_with_http_info(org_id, webhook_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_webhooks_tunnel_stream_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_webhooks_disable

> admin_webhooks_webhooks_disable(org_id, webhook_id)

Disable webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Disable webhook
  api_instance.admin_webhooks_webhooks_disable(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_disable: #{e}"
end
```

#### Using the admin_webhooks_webhooks_disable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_webhooks_disable_with_http_info(org_id, webhook_id)

```ruby
begin
  # Disable webhook
  data, status_code, headers = api_instance.admin_webhooks_webhooks_disable_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_disable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_webhooks_webhooks_enable

> admin_webhooks_webhooks_enable(org_id, webhook_id)

Enable webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Enable webhook
  api_instance.admin_webhooks_webhooks_enable(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_enable: #{e}"
end
```

#### Using the admin_webhooks_webhooks_enable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_webhooks_webhooks_enable_with_http_info(org_id, webhook_id)

```ruby
begin
  # Enable webhook
  data, status_code, headers = api_instance.admin_webhooks_webhooks_enable_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_enable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_admin_webhooks_update

> patch_admin_webhooks_update(org_id, webhook_id)

Update an existing webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Update an existing webhook
  api_instance.patch_admin_webhooks_update(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->patch_admin_webhooks_update: #{e}"
end
```

#### Using the patch_admin_webhooks_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_webhooks_update_with_http_info(org_id, webhook_id)

```ruby
begin
  # Update an existing webhook
  data, status_code, headers = api_instance.patch_admin_webhooks_update_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->patch_admin_webhooks_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_webhooks_update

> put_admin_webhooks_update(org_id, webhook_id)

Update an existing webhook

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

api_instance = LumoAuthApiClient::AdminWebhooksApi.new
org_id = 'org_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

begin
  # Update an existing webhook
  api_instance.put_admin_webhooks_update(org_id, webhook_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->put_admin_webhooks_update: #{e}"
end
```

#### Using the put_admin_webhooks_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_webhooks_update_with_http_info(org_id, webhook_id)

```ruby
begin
  # Update an existing webhook
  data, status_code, headers = api_instance.put_admin_webhooks_update_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->put_admin_webhooks_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

