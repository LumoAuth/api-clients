# LumoAuthApiClient::SsfApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stream_config**](SsfApi.md#create_stream_config) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream |
| [**delete_stream_config**](SsfApi.md#delete_stream_config) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream |
| [**get_stream_config**](SsfApi.md#get_stream_config) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s) |
| [**verify_stream**](SsfApi.md#verify_stream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event |


## create_stream_config

> <SsfStream> create_stream_config(org_id)

Create an SSF stream

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
  # Create an SSF stream
  result = api_instance.create_stream_config(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->create_stream_config: #{e}"
end
```

#### Using the create_stream_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SsfStream>, Integer, Hash)> create_stream_config_with_http_info(org_id)

```ruby
begin
  # Create an SSF stream
  data, status_code, headers = api_instance.create_stream_config_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SsfStream>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->create_stream_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**SsfStream**](SsfStream.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_stream_config

> delete_stream_config(stream_id, org_id)

Delete an SSF stream

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
stream_id = 'stream_id_example' # String | 
org_id = 'org_id_example' # String | 

begin
  # Delete an SSF stream
  api_instance.delete_stream_config(stream_id, org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->delete_stream_config: #{e}"
end
```

#### Using the delete_stream_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stream_config_with_http_info(stream_id, org_id)

```ruby
begin
  # Delete an SSF stream
  data, status_code, headers = api_instance.delete_stream_config_with_http_info(stream_id, org_id)
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
| **stream_id** | **String** |  |  |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_stream_config

> <GetStreamConfig200Response> get_stream_config(org_id, opts)

Read SSF stream configuration(s)

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
opts = {
  stream_id: 'stream_id_example' # String | 
}

begin
  # Read SSF stream configuration(s)
  result = api_instance.get_stream_config(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->get_stream_config: #{e}"
end
```

#### Using the get_stream_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStreamConfig200Response>, Integer, Hash)> get_stream_config_with_http_info(org_id, opts)

```ruby
begin
  # Read SSF stream configuration(s)
  data, status_code, headers = api_instance.get_stream_config_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStreamConfig200Response>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling SsfApi->get_stream_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **stream_id** | **String** |  | [optional] |

### Return type

[**GetStreamConfig200Response**](GetStreamConfig200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_stream

> verify_stream(org_id)

Request a stream verification event

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
  # Request a stream verification event
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
  # Request a stream verification event
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

