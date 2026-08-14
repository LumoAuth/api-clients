# LumoAuthApiClient::WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_authorization_server_metadata**](WellKnownApi.md#get_authorization_server_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server |  |
| [**get_jwks**](WellKnownApi.md#get_jwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json |  |
| [**get_openid_configuration**](WellKnownApi.md#get_openid_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration |  |
| [**get_ssf_configuration**](WellKnownApi.md#get_ssf_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration |  |


## get_authorization_server_metadata

> get_authorization_server_metadata(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.get_authorization_server_metadata(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_authorization_server_metadata: #{e}"
end
```

#### Using the get_authorization_server_metadata_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_authorization_server_metadata_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_authorization_server_metadata_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_authorization_server_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_jwks

> get_jwks(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.get_jwks(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_jwks: #{e}"
end
```

#### Using the get_jwks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_jwks_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_jwks_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_openid_configuration

> get_openid_configuration(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.get_openid_configuration(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_openid_configuration: #{e}"
end
```

#### Using the get_openid_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_openid_configuration_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_openid_configuration_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_openid_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_ssf_configuration

> get_ssf_configuration(org_id)



### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.get_ssf_configuration(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_ssf_configuration: #{e}"
end
```

#### Using the get_ssf_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_ssf_configuration_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ssf_configuration_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_ssf_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

