# LumoAuthApiClient::AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_webhooks_create**](AdminWebhooksApi.md#admin_webhooks_create) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook |
| [**admin_webhooks_delete**](AdminWebhooksApi.md#admin_webhooks_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook |
| [**admin_webhooks_deliveries_list**](AdminWebhooksApi.md#admin_webhooks_deliveries_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries |
| [**admin_webhooks_delivery_replay**](AdminWebhooksApi.md#admin_webhooks_delivery_replay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery |
| [**admin_webhooks_delivery_show**](AdminWebhooksApi.md#admin_webhooks_delivery_show) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery |
| [**admin_webhooks_events**](AdminWebhooksApi.md#admin_webhooks_events) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types |
| [**admin_webhooks_get**](AdminWebhooksApi.md#admin_webhooks_get) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook |
| [**admin_webhooks_list**](AdminWebhooksApi.md#admin_webhooks_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks |
| [**admin_webhooks_rotate_secret**](AdminWebhooksApi.md#admin_webhooks_rotate_secret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret |
| [**admin_webhooks_test**](AdminWebhooksApi.md#admin_webhooks_test) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery |
| [**admin_webhooks_tunnel_start**](AdminWebhooksApi.md#admin_webhooks_tunnel_start) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel |
| [**admin_webhooks_tunnel_stop**](AdminWebhooksApi.md#admin_webhooks_tunnel_stop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel |
| [**admin_webhooks_tunnel_stream**](AdminWebhooksApi.md#admin_webhooks_tunnel_stream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE) |
| [**admin_webhooks_webhooks_disable**](AdminWebhooksApi.md#admin_webhooks_webhooks_disable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook |
| [**admin_webhooks_webhooks_enable**](AdminWebhooksApi.md#admin_webhooks_webhooks_enable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook |
| [**patch_admin_webhooks_update**](AdminWebhooksApi.md#patch_admin_webhooks_update) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook |
| [**put_admin_webhooks_update**](AdminWebhooksApi.md#put_admin_webhooks_update) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook |


## admin_webhooks_create

> <AdminWebhooksCreateResponse> admin_webhooks_create(org_id)

Create a webhook

The signing secret is generated server-side and returned once in this response only.

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
  # Create a webhook
  result = api_instance.admin_webhooks_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_create: #{e}"
end
```

#### Using the admin_webhooks_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksCreateResponse>, Integer, Hash)> admin_webhooks_create_with_http_info(org_id)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.admin_webhooks_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminWebhooksCreateResponse**](AdminWebhooksCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_delete

> <MessageResponse> admin_webhooks_delete(org_id, webhook_id)

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
  result = api_instance.admin_webhooks_delete(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delete: #{e}"
end
```

#### Using the admin_webhooks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_webhooks_delete_with_http_info(org_id, webhook_id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.admin_webhooks_delete_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_deliveries_list

> <AdminWebhooksDeliveriesListResponse> admin_webhooks_deliveries_list(org_id, webhook_id)

List recent deliveries

Most recent delivery attempts for the webhook (single page, newest first). Optional `status` filter (pending|success|failed|dead_lettered) and `limit` (1-200, default 50).

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
  # List recent deliveries
  result = api_instance.admin_webhooks_deliveries_list(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_deliveries_list: #{e}"
end
```

#### Using the admin_webhooks_deliveries_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksDeliveriesListResponse>, Integer, Hash)> admin_webhooks_deliveries_list_with_http_info(org_id, webhook_id)

```ruby
begin
  # List recent deliveries
  data, status_code, headers = api_instance.admin_webhooks_deliveries_list_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksDeliveriesListResponse>
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

[**AdminWebhooksDeliveriesListResponse**](AdminWebhooksDeliveriesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_delivery_replay

> <AdminWebhooksDeliveryReplayResponse> admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)

Replay a delivery

Resets the delivery's failure state (attempt history is preserved) and re-enqueues it. Idempotent on already-pending rows.

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
  # Replay a delivery
  result = api_instance.admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_replay: #{e}"
end
```

#### Using the admin_webhooks_delivery_replay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksDeliveryReplayResponse>, Integer, Hash)> admin_webhooks_delivery_replay_with_http_info(org_id, webhook_id, delivery_id)

```ruby
begin
  # Replay a delivery
  data, status_code, headers = api_instance.admin_webhooks_delivery_replay_with_http_info(org_id, webhook_id, delivery_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksDeliveryReplayResponse>
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

[**AdminWebhooksDeliveryReplayResponse**](AdminWebhooksDeliveryReplayResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_delivery_show

> <AdminWebhooksDeliveryShowResponse> admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)

Get a delivery

A single delivery including the event payload and the per-attempt history.

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
  # Get a delivery
  result = api_instance.admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_delivery_show: #{e}"
end
```

#### Using the admin_webhooks_delivery_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksDeliveryShowResponse>, Integer, Hash)> admin_webhooks_delivery_show_with_http_info(org_id, webhook_id, delivery_id)

```ruby
begin
  # Get a delivery
  data, status_code, headers = api_instance.admin_webhooks_delivery_show_with_http_info(org_id, webhook_id, delivery_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksDeliveryShowResponse>
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

[**AdminWebhooksDeliveryShowResponse**](AdminWebhooksDeliveryShowResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_events

> <AdminWebhooksEventsResponse> admin_webhooks_events(org_id)

List available webhook event types

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
  # List available webhook event types
  result = api_instance.admin_webhooks_events(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_events: #{e}"
end
```

#### Using the admin_webhooks_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksEventsResponse>, Integer, Hash)> admin_webhooks_events_with_http_info(org_id)

```ruby
begin
  # List available webhook event types
  data, status_code, headers = api_instance.admin_webhooks_events_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksEventsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminWebhooksEventsResponse**](AdminWebhooksEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_get

> <AdminWebhooksGetResponse> admin_webhooks_get(org_id, webhook_id)

Get a webhook

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
  # Get a webhook
  result = api_instance.admin_webhooks_get(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_get: #{e}"
end
```

#### Using the admin_webhooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksGetResponse>, Integer, Hash)> admin_webhooks_get_with_http_info(org_id, webhook_id)

```ruby
begin
  # Get a webhook
  data, status_code, headers = api_instance.admin_webhooks_get_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksGetResponse>
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

[**AdminWebhooksGetResponse**](AdminWebhooksGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_list

> <AdminWebhooksListResponse> admin_webhooks_list(org_id)

List webhooks

Paginated list of the tenant's webhooks (summary shape, without `configuration`). Filter with `isActive`, `event`; sort with `sortBy` (createdAt|isActive) and `sortDir`.

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
  # List webhooks
  result = api_instance.admin_webhooks_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_list: #{e}"
end
```

#### Using the admin_webhooks_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksListResponse>, Integer, Hash)> admin_webhooks_list_with_http_info(org_id)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.admin_webhooks_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminWebhooksListResponse**](AdminWebhooksListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_rotate_secret

> <AdminWebhooksRotateSecretResponse> admin_webhooks_rotate_secret(org_id, webhook_id)

Rotate the signing secret

Generates a new HMAC secret and keeps the previous one for a grace window. The new secret is returned once.

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
  # Rotate the signing secret
  result = api_instance.admin_webhooks_rotate_secret(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_rotate_secret: #{e}"
end
```

#### Using the admin_webhooks_rotate_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksRotateSecretResponse>, Integer, Hash)> admin_webhooks_rotate_secret_with_http_info(org_id, webhook_id)

```ruby
begin
  # Rotate the signing secret
  data, status_code, headers = api_instance.admin_webhooks_rotate_secret_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksRotateSecretResponse>
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

[**AdminWebhooksRotateSecretResponse**](AdminWebhooksRotateSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_test

> <AdminWebhooksTestResponse> admin_webhooks_test(org_id, webhook_id)

Send a test delivery

POSTs a signed `test.webhook` payload to the webhook URL and reports the receiver's status. A non-2xx receiver response still yields HTTP 200 with `success: false`; a transport failure yields 502.

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
  # Send a test delivery
  result = api_instance.admin_webhooks_test(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_test: #{e}"
end
```

#### Using the admin_webhooks_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksTestResponse>, Integer, Hash)> admin_webhooks_test_with_http_info(org_id, webhook_id)

```ruby
begin
  # Send a test delivery
  data, status_code, headers = api_instance.admin_webhooks_test_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksTestResponse>
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

[**AdminWebhooksTestResponse**](AdminWebhooksTestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_tunnel_start

> <AdminWebhooksTunnelStartResponse> admin_webhooks_tunnel_start(org_id)

Start a webhook tunnel

Creates a transient `tunnel://` webhook subscribed to every event (`*`) for `lumo tunnel`. Deliveries are stored instead of sent, and can be consumed from the stream endpoint.

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
  # Start a webhook tunnel
  result = api_instance.admin_webhooks_tunnel_start(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_start: #{e}"
end
```

#### Using the admin_webhooks_tunnel_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksTunnelStartResponse>, Integer, Hash)> admin_webhooks_tunnel_start_with_http_info(org_id)

```ruby
begin
  # Start a webhook tunnel
  data, status_code, headers = api_instance.admin_webhooks_tunnel_start_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksTunnelStartResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminWebhooksTunnelStartResponse**](AdminWebhooksTunnelStartResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_tunnel_stop

> <MessageResponse> admin_webhooks_tunnel_stop(org_id, webhook_id)

Stop a webhook tunnel

Deletes the tunnel webhook and its pending deliveries. Only `tunnel://` webhooks can be stopped here.

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
  # Stop a webhook tunnel
  result = api_instance.admin_webhooks_tunnel_stop(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stop: #{e}"
end
```

#### Using the admin_webhooks_tunnel_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_webhooks_tunnel_stop_with_http_info(org_id, webhook_id)

```ruby
begin
  # Stop a webhook tunnel
  data, status_code, headers = api_instance.admin_webhooks_tunnel_stop_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_tunnel_stream

> String admin_webhooks_tunnel_stream(org_id, webhook_id)

Stream tunnel deliveries (SSE)

Long-lived Server-Sent Events stream of deliveries recorded for a tunnel webhook. The stream polls every 2 seconds and closes after 10 minutes; clients should reconnect.

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
  # Stream tunnel deliveries (SSE)
  result = api_instance.admin_webhooks_tunnel_stream(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_tunnel_stream: #{e}"
end
```

#### Using the admin_webhooks_tunnel_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> admin_webhooks_tunnel_stream_with_http_info(org_id, webhook_id)

```ruby
begin
  # Stream tunnel deliveries (SSE)
  data, status_code, headers = api_instance.admin_webhooks_tunnel_stream_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
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

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream


## admin_webhooks_webhooks_disable

> <AdminWebhooksWebhooksDisableResponse> admin_webhooks_webhooks_disable(org_id, webhook_id)

Disable a webhook

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
  # Disable a webhook
  result = api_instance.admin_webhooks_webhooks_disable(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_disable: #{e}"
end
```

#### Using the admin_webhooks_webhooks_disable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksWebhooksDisableResponse>, Integer, Hash)> admin_webhooks_webhooks_disable_with_http_info(org_id, webhook_id)

```ruby
begin
  # Disable a webhook
  data, status_code, headers = api_instance.admin_webhooks_webhooks_disable_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksWebhooksDisableResponse>
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

[**AdminWebhooksWebhooksDisableResponse**](AdminWebhooksWebhooksDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_webhooks_webhooks_enable

> <AdminWebhooksWebhooksEnableResponse> admin_webhooks_webhooks_enable(org_id, webhook_id)

Enable a webhook

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
  # Enable a webhook
  result = api_instance.admin_webhooks_webhooks_enable(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->admin_webhooks_webhooks_enable: #{e}"
end
```

#### Using the admin_webhooks_webhooks_enable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminWebhooksWebhooksEnableResponse>, Integer, Hash)> admin_webhooks_webhooks_enable_with_http_info(org_id, webhook_id)

```ruby
begin
  # Enable a webhook
  data, status_code, headers = api_instance.admin_webhooks_webhooks_enable_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminWebhooksWebhooksEnableResponse>
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

[**AdminWebhooksWebhooksEnableResponse**](AdminWebhooksWebhooksEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_webhooks_update

> <PutAdminWebhooksUpdateResponse> patch_admin_webhooks_update(org_id, webhook_id)

Partially update a webhook

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
  # Partially update a webhook
  result = api_instance.patch_admin_webhooks_update(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->patch_admin_webhooks_update: #{e}"
end
```

#### Using the patch_admin_webhooks_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminWebhooksUpdateResponse>, Integer, Hash)> patch_admin_webhooks_update_with_http_info(org_id, webhook_id)

```ruby
begin
  # Partially update a webhook
  data, status_code, headers = api_instance.patch_admin_webhooks_update_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminWebhooksUpdateResponse>
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

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_webhooks_update

> <PutAdminWebhooksUpdateResponse> put_admin_webhooks_update(org_id, webhook_id)

Update a webhook

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
  # Update a webhook
  result = api_instance.put_admin_webhooks_update(org_id, webhook_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminWebhooksApi->put_admin_webhooks_update: #{e}"
end
```

#### Using the put_admin_webhooks_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminWebhooksUpdateResponse>, Integer, Hash)> put_admin_webhooks_update_with_http_info(org_id, webhook_id)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.put_admin_webhooks_update_with_http_info(org_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminWebhooksUpdateResponse>
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

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

