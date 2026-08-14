# LumoAuthApiClient::SsfApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stream_config**](SsfApi.md#create_stream_config) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \&quot;delivery\&quot;: { \&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;...\&quot;,                 \&quot;authorization_token\&quot;: \&quot;...\&quot; },   \&quot;events_requested\&quot;: [\&quot;...uri...\&quot;],   \&quot;audience\&quot;: \&quot;https://receiver.example.com\&quot; } |
| [**delete_stream_config**](SsfApi.md#delete_stream_config) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream |  |
| [**get_stream_config**](SsfApi.md#get_stream_config) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). &#x60;?stream_id&#x3D;&#x60; returns a single config, otherwise all of the tenant&#39;s streams are returned. |
| [**verify_stream**](SsfApi.md#verify_stream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \&quot;stream_id\&quot;: \&quot;ssf_...\&quot;, \&quot;state\&quot;: \&quot;optional-opaque-echo\&quot; } |


## create_stream_config

> create_stream_config(org_id)

Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }

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

api_instance = LumoAuthApiClient::SsfApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
  api_instance.create_stream_config(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->create_stream_config: #{e}"
end
```

#### Using the create_stream_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_stream_config_with_http_info(org_id)

```ruby
begin
  # Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
  data, status_code, headers = api_instance.create_stream_config_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->create_stream_config_with_http_info: #{e}"
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


## delete_stream_config

> delete_stream_config(org_id)



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

api_instance = LumoAuthApiClient::SsfApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.delete_stream_config(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->delete_stream_config: #{e}"
end
```

#### Using the delete_stream_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stream_config_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_stream_config_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->delete_stream_config_with_http_info: #{e}"
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


## get_stream_config

> get_stream_config(org_id)

Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.

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

api_instance = LumoAuthApiClient::SsfApi.new
org_id = 'org_id_example' # String | 

begin
  # Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
  api_instance.get_stream_config(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->get_stream_config: #{e}"
end
```

#### Using the get_stream_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_stream_config_with_http_info(org_id)

```ruby
begin
  # Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
  data, status_code, headers = api_instance.get_stream_config_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->get_stream_config_with_http_info: #{e}"
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


## verify_stream

> verify_stream(org_id)

SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }

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

api_instance = LumoAuthApiClient::SsfApi.new
org_id = 'org_id_example' # String | 

begin
  # SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }
  api_instance.verify_stream(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->verify_stream: #{e}"
end
```

#### Using the verify_stream_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verify_stream_with_http_info(org_id)

```ruby
begin
  # SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }
  data, status_code, headers = api_instance.verify_stream_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->verify_stream_with_http_info: #{e}"
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

